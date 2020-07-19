from kivy.uix.label import Label
from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.lang import Builder
import pymssql


Builder.load_file('companyList.kv')


f = open("/home/mohammadsgh/Desktop/pass.txt", "r")
SERVER = "localhost"
USER = "sa"
PASSWORD = f.read().split('\n')[0]
DATABASE = "CarSaleDatabase"
f.close()

connection = pymssql.connect(server=SERVER, user=USER,
                             password=PASSWORD, database=DATABASE)
cursor = connection.cursor()
cursor.execute("SELECT * FROM Company")


class companyListPageScreen(BoxLayout):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.updateCompany()

    def updateCompany(self):

        CompanyContainer = self.ids.company
        colors = (.06, .45, .45, 1)
        for row in cursor:
            details = BoxLayout(size_hint_y=None, height=30,
                                pos_hint={'top': 1}, padding=5)
            CompanyContainer.add_widget(details)

            cID = Label(text=str(row[0]), size_hint_x=.112, color=(.06, .45, .45, 1))
            cname = Label(text=str(row[1]), size_hint_x=.350, color=(.06, .45, .45, 1))
            cCountry = Label(text=str(row[2]), size_hint_x=.112, color=(.06, .45, .45, 1))

            details.add_widget(cID)
            details.add_widget(cname)
            details.add_widget(cCountry)

        cursor.close()
        connection.close()

    def BackToTablesPage(self):
        self.parent.parent.current = 'TablesListPageScreen'


class MainApp(App):

    def build(self):
        return companyListPageScreen()


if __name__ == "__main__":

    MainApp().run()
