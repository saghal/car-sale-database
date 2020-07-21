from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.label import Label
from kivy.lang import Builder
import pymssql

Builder.load_file('cityBranches.kv')

f = open("/home/mohammadsgh/Desktop/pass.txt", "r")
SERVER = "localhost"
USER = "sa"
PASSWORD = f.read().split('\n')[0]
DATABASE = "CarSaleDatabase"
f.close()

connection = pymssql.connect(server=SERVER, user=USER,
                             password=PASSWORD, database=DATABASE)
cursor = connection.cursor()


class cityBranchesPageScreen(BoxLayout):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)

    def checkout(self):
        self.ids.city.clear_widgets()
        self.l = 0

    def update_purchases(self):
        self.checkout()
        city = self.ids.cityName.text
        products_container = self.ids.city
        txt1 = "EXECUTE CityBranches @city = \'"
        txt2 = "\'"
        txt = txt1 + str(city) + txt2
        cursor.execute(txt)
        if cursor is not None:
            for row in cursor:
                details = BoxLayout(
                    size_hint_y=None, height=30, pos_hint={'top': 1})
                products_container.add_widget(details)
                code = Label(text=str(row[0]), size_hint_x=.2, color=(.06, .45, .45, 1))
                brName = Label(text=row[1], size_hint_x=.2, color=(.06, .45, .45, 1))
                cName = Label(text=row[3], size_hint_x=.2,color=(.06, .45, .45, 1))

                details.add_widget(code)
                details.add_widget(brName)
                details.add_widget(cName)

        self.ids.cityName.text = ""

    def BackToDashboard(self):
        self.parent.parent.current = 'dashboardPageScreen'
        self.checkout()


class MainApp(App):
    def build(self):
        return cityBranchesPageScreen()


if __name__ == "__main__":
    oa = MainApp()
    oa.run()
