import tkinter as tk
from PIL import ImageTk


root = tk.Tk()
root.title("Eagle Business Platform")
root.eval("tk::PlaceWindow . center")

frame1 = tk.Frame(root, width=700, height=700, bg="white")
frame1.grid(row=0, column=0)
frame1.pack_propagate(False)

logo = ImageTk.PhotoImage(file="D:\eagle.jpg")
logo_widget = tk.Label(frame1, image=logo, height=640, width=640)
logo_widget.image = logo

logo_widget.pack()





root.mainloop()
