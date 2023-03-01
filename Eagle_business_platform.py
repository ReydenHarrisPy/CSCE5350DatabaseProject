import tkinter as tk
from tkinter import *
from tkinter import ttk
import mysql.connector
from tabulate import tabulate
import webbrowser


class App:
    def __init__(self):
        db = mysql.connector.connect(
            host="localhost",
            username="root",
            passwd="root",
            database="eagle_business_platform1"
        )
        cursor = db.cursor()
        cursor.execute("show tables")

        tables = [item[0] for item in cursor.fetchall()]
        print("Select a table:")

        for i in range(len(tables)):
            print(i, tables[i])

        tab = comboBox(tables, "Choose a table")
        statement = "describe " + tables[tab]
        print(statement)
        cursor.execute(statement)
        headers = [item[0] for item in cursor.fetchall()]

        print(headers)
        statement = "select * from " + tables[tab]
        cursor.execute(statement)
        result = [item for item in cursor.fetchall()]
        for i in range(len(result)):
            print(result[i])

        def show():
            listBox.delete(*listBox.get_children())
            statement = "select * from " + tables[tab]
            cursor.execute(statement)
            result = [item for item in cursor.fetchall()]
            tempList = result
            for i in range(len(tempList)):
                listBox.insert("", "end", values=result[i])

        def insert():
            statement = "Insert into " + tables[tab] + " values("
            temp = ''
            for i in range(len(headers)):
                temp = entries[i].get()
                if isClickable(i):
                    cp = entries[i].current()
                    temp = str(blist1[getBlist(i)][cp])
                if isClickable2(i):
                    cp = entries[i].current()
                    temp = str(blist2[cp])
                if temp == '' or temp == 'None':
                    temp = 'null'
                else:
                    temp = "'" + temp + "'"
                statement += temp
                statement += ", "
            statement = statement[:-2]
            statement += ")"
            print(statement)
            cursor.execute(statement)
            db.commit()
            show()

        backupRow = []

        def update():
            statement = "update " + tables[tab] + " set "
            temp = ''
            for i in range(len(headers)):
                temp = entries[i].get()
                if isClickable(i):
                    cp = entries[i].current()
                    temp = str(blist1[getBlist(i)][cp])
                if isClickable2(i):
                    cp = entries[i].current()
                    temp = str(blist2[cp])
                if temp == '' or temp == 'None':
                    temp = 'null'
                else:
                    temp = "'" + temp + "'"
                statement += headers[i] + "=" + temp + ", "
            statement = statement[:-2]
            statement += " Where "
            print(backupRow)
            for i in range(len(headers)):
                temp = backupRow[i]
                if temp == '' or temp == 'None':
                    temp = 'null'
                else:
                    temp = "'" + temp + "'"
                if temp == 'null':
                    statement += headers[i] + " is null and "
                    continue
                statement += headers[i] + "=" + temp + " and "
            statement = statement[:-4]
            print(statement)
            cursor.execute(statement)
            db.commit()
            show()

        def delete():
            statement = "delete from " + tables[tab] + " where "
            print(backupRow)
            tempres = ''
            for i in range(len(headers)):
                tempres = backupRow[i]
                if tempres == '' or tempres == 'None':
                    tempres = 'null'
                else:
                    tempres = "'" + tempres + "'"
                if tempres == 'null':
                    statement += headers[i] + " is null and "
                    continue
                statement += headers[i] + "='" + backupRow[i] + "' and "
            statement = statement[:-4]
            print(statement)
            cursor.execute(statement)
            db.commit()
            show()

        def onClick(event):
            backupRow.clear()
            item = listBox.identify("item", event.x, event.y)
            print(listBox.item(item, 'values'))
            ins = listBox.item(item, 'values')
            for i in range(len(ins)):
                print(ins[i])
                backupRow.append(ins[i])
                entries[i].delete(0, END)
                entries[i].insert(0, ins[i])

        def isClickable(i):
            if tables[tab] == 'sales' and (
                    headers[i] == 'CUSTOMER_ID' or headers[i] == 'MAKE' or headers[i] == 'MODEL'):
                return TRUE
            return FALSE

        def getBlist(i):
            if headers[i] == 'CUSTOMER_ID':
                return 0
            elif headers[i] == 'MAKE':
                return 1
            elif headers[i] == 'MODEL':
                return 2

        def isClickable2(i):
            if (tables[tab] == 'parts_profit' or tables[tab] == 'parts') and (headers[i] == 'PARTS_ID'):
                return TRUE
            return FALSE

        self.root = tk.Tk()
        self.tree = ttk.Treeview()

        showTable = self.root
        showTable.title("11046224 - Reyden Harris")
        label = tk.Label(showTable, text=tables[tab], font=('Microsoft YaHei UI Light',25,'bold')).grid(row=0, columnspan=len(headers))
        label2 = tk.Label(showTable, text="                      ").grid(row=4, columnspan=len(headers))
        label3 = tk.Label(showTable, text="                      ").grid(row=6, columnspan=len(headers))
        # create Treeview with 3 columns
        cols = headers
        self.tree = ttk.Treeview(showTable, columns=headers, show='headings')
        listBox = self.tree
        # set column headings
        for col in cols:
            listBox.heading(col, text=col)
        listBox.grid(row=10, column=0, columnspan=len(headers))
        show()
        entries = []

        blist1 = [[], [], []]
        blist2 = []
        for i in range(len(headers)):
            if isClickable(i):
                if headers[i] == 'CUSTOMER_ID':
                    statement = "select * from customers"
                    cursor.execute(statement)
                    resultset = [item for item in cursor.fetchall()]
                    resultset.insert(0, "None")
                    blist1[0] = [item[0] for item in resultset]
                    blist1[0][0] = "None"
                    print(resultset)
                    entries.append(ttk.Combobox(showTable, values=resultset))
                    entries[i].grid(row=5, column=i)
                    continue
                elif headers[i] == 'MAKE':
                    statement = "select * from vehicle_information"
                    cursor.execute(statement)
                    resultset = [item for item in cursor.fetchall()]
                    resultset.insert(0, "None")
                    blist1[1] = [item[1] for item in resultset]
                    blist1[1][0] = "None"
                    print(resultset)
                    entries.append(ttk.Combobox(showTable, values=resultset))
                    entries[i].grid(row=5, column=i)
                    continue
                elif headers[i] == 'CUSTOMER_ID':
                    statement = "select * from customers"
                    cursor.execute(statement)
                    resultset = [item for item in cursor.fetchall()]
                    resultset.insert(0, "None")
                    blist1[2] = [item[0] for item in resultset]
                    blist1[2][0] = "None"
                    print(resultset)
                    entries.append(ttk.Combobox(showTable, values=resultset))
                    entries[i].grid(row=5, column=i)
                    continue
            elif isClickable2(i):
                statement = "select * from parts"
                cursor.execute(statement)
                resultset = [item for item in cursor.fetchall()]
                k = 0
                lim = len(resultset)
                while k < lim:
                    if resultset[k][2] == 'inactive':
                        del resultset[k]
                        lim -= 1
                        k -= 1
                    k += 1
                resultset.insert(0, "None")
                blist2 = [item[0] for item in resultset]
                blist2[0] = 'None'
                print(resultset)
                print(blist2)
                entries.append(ttk.Combobox(showTable, values=resultset))
                entries[i].grid(row=5, column=i)
                continue

            entries.append(Entry(self.root))
            entries[i].grid(row=5, column=i)

        updateButton = tk.Button(showTable, text="Update Table", width=15, command=update).grid(row=1, column=0)
        closeButton = tk.Button(showTable, text="Close App", width=15, command=exit).grid(row=3,
                                                                                          column=len(headers) - 1)
        deleteButton = tk.Button(showTable, text="Delete Record", width=15, command=delete).grid(row=1, column=len(
            headers) - 1)
        insertButton = tk.Button(showTable, text="Insert Record", width=15, command=insert).grid(row=3, column=0)

        listBox.bind("<ButtonRelease-1>", onClick)
        self.root.mainloop()
        db.close()


def comboBox(optionset, title):
    global option
    option = 0
    app = tk.Tk()
    app.geometry('600x800')

    labelTop = tk.Label(app)
    labelTop.grid(column=0, row=0)

    comboExample = ttk.Combobox(app,
                                values=optionset)

    comboExample.grid(column=0, row=1)
    comboExample.current(0)

    logo = PhotoImage(file='C:\mascot.png')
    logo_widget = tk.Label(labelTop, image=logo, height=900, width=600)
    logo_widget.image = logo
    logo_widget.pack()

    def Menu():
        global option
        option = comboExample.current()
        app.destroy()

    optionButton = tk.Button(app, text="OK", width=15, command=Menu).grid(row=2, column=0)
    exitButton = tk.Button(app, text="Exit", width=15, command=exit).grid(row=3, column=0)
    app.grid_rowconfigure(0, weight=1)
    app.grid_columnconfigure(0, weight=1)

    app.title(title)
    app.mainloop()
    return option


def printReport(cursor, title, headersnames, f):
    f.write(title)
    f.write("\n")
    print(title)
    myresult = cursor.fetchall()
    finalres = tabulate(myresult, headers=headersnames, tablefmt='psql')
    print(finalres)
    f.write(finalres)
    f.write("\n\n\n")
    print("\n")


def generateReports():
    db = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="root",
        database="eagle_business_platform"
    )
    cursor = db.cursor()

    f = open("report.txt", "w")

    cursor.execute("""select MODEL, count(MSRP) as total_sold, avg(MSRP) as avg_price
    from sales
    group by MODEL ORDER BY total_sold DESC;""")

    printReport(cursor, "Total Sales", ['MODEL', 'total_sold', 'avg_price'], f)

    cursor.execute("""select sum(PART_MARGIN), QUARTER, YEAR from parts_profit where YEAR = 2022 group by QUARTER;""")

    printReport(cursor, "Parts profit by Quarter", ['PART_MARGIN', 'QUARTER', 'YEAR'], f)

    cursor.execute("""select BANK_NAME, sum(BALANCE) as Loan_Total from financial_information group by BANK_NAME;""")

    printReport(cursor, 'Total Loans per Bank', ['Bank Name', 'Loan total'], f)

    cursor.execute(
        """select EMPLOYEE_FIRSTNAME, EMPLOYEE_LASTNAME FROM sales_person where EMPLOYEE_ID in (select employee_id from sales_report order by PROFIT_MARGIN) LIMIT 1;""")

    printReport(cursor, 'Top SalesMan', ['First Name', 'Last Name'], f)

    db.close()
    f.close()
    webbrowser.open("report.txt")


def removeTables():
    db = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="root",
        database="eagle_business_platform"
    )
    cursor = db.cursor()

    cursor.execute("show tables")

    tables = [item[0] for item in cursor.fetchall()]
    print("Select a table to remove:")

    for i in range(len(tables)):
        print(i, tables[i])

    tab = comboBox(tables, "Select table to remove")
    statement = "drop table " + tables[tab]
    print(statement)
    cursor.execute(statement)
    db.commit()
    print("Table", tables[tab], "removed")
    db.close()


def createTable():
    db = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="root",
        database="eagle_business_platform"
    )
    cursor = db.cursor()

    fields = 'Table name', 'Attributes', 'Constraints'

    def maketable():
        statement = ""
        statement += "create table "
        statement += ents[0].get()
        statement += "(" + ents[1].get()
        if ents[2].get() != "":
            statement += ", "
        statement += ents[2].get() + ")"
        print(statement)
        cursor.execute(statement)
        db.commit()
        root.destroy()

    def makeform(root, fields):
        entries = []
        for field in fields:
            row = tk.Frame(root)
            lab = tk.Label(row, width=16, text=field, anchor='w')
            ent = tk.Entry(row)
            row.pack(side=tk.TOP, fill=tk.X, padx=6, pady=6)
            lab.pack(side=tk.LEFT)
            ent.pack(side=tk.RIGHT, expand=tk.YES, fill=tk.X)
            entries.append(ent)
        return entries

    root = tk.Tk()
    ents = makeform(root, fields)

    b1 = tk.Button(root, text='Create Table', command=maketable)
    b1.pack(side=tk.LEFT, padx=5, pady=5)
    b2 = tk.Button(root, text='Quit', command=root.destroy)
    b2.pack(side=tk.LEFT, padx=5, pady=5)
    root.mainloop()

    db.close()


if __name__ == "__main__":
    while TRUE:
        firstOption = ["Show and Edit tables", "Generate Reports"]

        option = comboBox(firstOption, "Eagle Business Platform")
        if option == 0:
            app = App()
        elif option == 1:
            generateReports()
        elif option == 2:
            print("Remove table")
            removeTables()
        elif option == 3:
            print("Create table")
            createTable()
