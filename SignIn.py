from tkinter import *
from tkinter import messagebox
import mysql.connector
from subprocess import call

def signuppage():
    root.destroy()
    import SignUp

def Eagle_business_platform():
    root.destroy()
    call(['Py', 'Eagle_business_platform.py'])

# create login window
root=Tk()
root.title('Eagle Business Platform')
root.geometry('1800x1000')
root.configure(bg='#fff')
root.resizable(True,True)

#define our sign in function

def login_user():
    if userEntry.get()=='' or passwordEntry.get()=='':
        messagebox.showerror('Error','All fields required')
    else:
        try:
            db = mysql.connector.connect(
                host="localhost",
                user="root",
                passwd="root",
                database="eagle_business_platform1"
            )
            cursor = db.cursor()
        except:
            messagebox.showerror('Database Connection Issue', 'Please contact DBA')
            return

        query1 = 'use eagle_business_platform1'
        cursor.execute(query1)

        query='select * from users where id=%s and last_name=%s'
        cursor.execute(query,(userEntry.get(),passwordEntry.get()))
        row = cursor.fetchone()
        if row==None:
            messagebox.showerror('Error','Invalid ID or Last Name')
        else:
            Eagle_business_platform()












#import login window image
img = PhotoImage(file='C:\mascot.png')
Label(root,image=img,bg='white').place(x=50,y=50)

#sign in frame
frame=Frame(root,width=700,height=750,bg='white')
frame.place(x=900,y=100)
#create heading within our signing frame
heading=Label(frame,text="Eagle Business Platform \n Please Sign In",fg='green4',bg= 'white',font=('Microsoft YaHei UI Light',23,'bold'))
heading.place(x=100,y=100)

#create user login field

#define function that create disappearing letters
def on_enter(e):
    userEntry.delete(0,'end')

def on_leave(e):
        name=userEntry.get()
        if name=='':
            userEntry.insert(0,'User ID')





userEntry = Entry(frame, width=25,fg='black',border=2, bg='white', font=('Microsoft YaHei UI Light',11))
userEntry.place(x=100,y=180)
userEntry.insert(0,'User ID')
userEntry.bind('<FocusIn>', on_enter) #calls function above to add feature of disappearing entries
userEntry.bind('<FocusOut>', on_leave)
Frame(frame,width=550,height=2,bg='black').place(x=90,y=240)



#create password field
def on_enter(e):
    passwordEntry.delete(0,'end')

def on_leave(e):
        code=passwordEntry.get()
        if code=='':
            passwordEntry.insert(0,'Last Name')



passwordEntry = Entry(frame, width=25,fg='black',border=2, bg='white', font=('Microsoft YaHei UI Light',11))
passwordEntry.place(x=100,y=380)
passwordEntry.insert(0,'Last Name')
passwordEntry.bind('<FocusIn>', on_enter) #calls function above to add feature of disappearing entries
passwordEntry.bind('<FocusOut>', on_leave)


Frame(frame,width=550,height=2,bg='black').place(x=90,y=440)

#create sign in button
Button(frame,width=39,pady=7,text='Log In',bg='green',fg='white',border=0,cursor='hand2',command=login_user).place(x=75,y=454)

signuplabel=Label(frame,text="Don't have an account?",fg='black',bg='white',font=('Microsoft YaHei UI Light',9))
signuplabel.place(x=100,y=554)

sign_up = Button(frame,width=6,text='Sign Up',border=0,bg='white',cursor='hand2',fg='green',command=signuppage)
sign_up.place(x=250,y=550)

root.mainloop()



