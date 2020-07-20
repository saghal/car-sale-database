from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.label import Label
from kivy.lang import Builder
import pymssql

Builder.load_file('checkFrom.kv')

f = open("/home/mohammadsgh/Desktop/pass.txt", "r")
SERVER = "localhost"
USER = "sa"
PASSWORD = f.read().split('\n')[0]
DATABASE = "CarSaleDatabase"
f.close()

connection = pymssql.connect(server=SERVER, user=USER,
                             password=PASSWORD, database=DATABASE)
cursor = connection.cursor()

class checkBuyFromCountryPage(BoxLayout):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)

    def update_purchases(self):
        country = self.ids.country.text
        products_container = self.ids.message
        txt1 = "select [dbo].[CountryCars](\'"
        txt2 = "\')"
        txt = txt1 + country + txt2
        cursor.execute(txt)
        for row in cursor:
            details = BoxLayout(size_hint_y=None, height=30, pos_hint={'top': 1})
            products_container.add_widget(details)

            code = Label(text=row[0] + country, size_hint_x=.2, color=(.06, .45, .45, 1))
            details.add_widget(code)
        self.ids.country.text = ""
    def checkout(self):  
        self.ids.message.clear_widgets()
        self.l = 0

    def BackToDashboard(self):
        self.parent.parent.current = 'dashboardPageScreen'
        self.checkout()



class MainApp(App):
    def build(self):
        return checkBuyFromCountryPage()


if __name__ == "__main__":
    oa = MainApp()
    oa.run()
