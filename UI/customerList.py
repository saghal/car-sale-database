from kivy.uix.label import Label
from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.lang import Builder
import pymssql


Builder.load_file('customerList.kv')


SERVER = "localhost"
USER = "sa"
PASSWORD = ""
DATABASE = "CarSaleDatabase"

connection = pymssql.connect(server=SERVER, user=USER,
                             password=PASSWORD, database=DATABASE)
cursor = connection.cursor()
cursor.execute("SELECT * FROM Customer")


class customerListPageScreen(BoxLayout):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.updateCustomer()

    def updateCustomer(self):

        CustomerContainer = self.ids.customer
        for row in cursor:
            details = BoxLayout(size_hint_y=None, height=30,
                                pos_hint={'top': 1}, padding=5)
            CustomerContainer.add_widget(details)

            nc = Label(text=str(row[1]),
                        size_hint_x=.112, color=(.06, .45, .45, 1))
            fname = Label(
                text=str(row[2]), size_hint_x=.112, color=(.06, .45, .45, 1))
            lname = Label(
                text=str(row[3]), size_hint_x=.112, color=(.06, .45, .45, 1))
            pnum = Label(
                text=str(row[4]), size_hint_x=.112, color=(.06, .45, .45, 1))
            geneder = Label(
                text=str(row[5]), size_hint_x=.112, color=(.06, .45, .45, 1))

            details.add_widget(nc)
            details.add_widget(fname)
            details.add_widget(lname)
            details.add_widget(pnum)
            details.add_widget(geneder)

        cursor.close()
        connection.close()

    def BackToTablesPage(self):
        self.parent.parent.current = 'TablesListPageScreen'


class MainApp(App):

    def build(self):
        return customerListPageScreen()


if __name__ == "__main__":

    MainApp().run()
