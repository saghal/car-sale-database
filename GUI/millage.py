from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.label import Label
from kivy.lang import Builder
import pymssql

Builder.load_file('millage.kv')

f = open("/home/mohammadsgh/Desktop/pass.txt", "r")
SERVER = "localhost"
USER = "sa"
PASSWORD = f.read().split('\n')[0]
DATABASE = "CarSaleDatabase"
f.close()

connection = pymssql.connect(server=SERVER, user=USER,
                             password=PASSWORD, database=DATABASE)
cursor = connection.cursor()


class millagePageScreen(BoxLayout):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)

    def checkout(self):
        self.ids.car.clear_widgets()
        self.l = 0

    def update_purchases(self):
        self.checkout()
        mile = self.ids.country.text
        products_container = self.ids.car
        txt1 = "select * FROM [dbo].[CarMillage]("
        txt2 = ")"
        if mile == "":
            txt = txt1 + str(10000000) + txt2
        else:
            txt = txt1 + str(mile) + txt2
        cursor.execute(txt)
        if cursor is not None:
            for row in cursor:
                details = BoxLayout(size_hint_y=None, height=30, pos_hint={'top': 1})
                products_container.add_widget(details)
                code = Label(text=str(row[0]), size_hint_x=.2, color=(.06, .45, .45, 1))
                enginNum = Label(text=row[1], size_hint_x=.2, color=(.06, .45, .45, 1))
                model = Label(text=row[3], size_hint_x=.2, color=(.06, .45, .45, 1))
                mile = Label(text=str(row[5]), size_hint_x=.2, color=(.06, .45, .45, 1))
                prodYear = Label(text=str(row[7]), size_hint_x=.2, color=(.06, .45, .45, 1))
                Fuel = Label(text=row[8], size_hint_x=.2, color=(.06, .45, .45, 1))
                details.add_widget(code)
                details.add_widget(enginNum)
                details.add_widget(model)
                details.add_widget(mile)
                details.add_widget(prodYear)
                details.add_widget(Fuel)



        self.ids.country.text = ""

    def lessMillage(self):
        self.checkout()
        mile = self.ids.country.text
        products_container = self.ids.car
        txt1 = "select * FROM [dbo].[CarLessMillage]("
        txt2 = ")"
        txt = ""
        if mile == "":
            txt = txt1 + str(0) + txt2
        else:
            txt = txt1 + str(mile) + txt2
        cursor.execute(txt)
        if cursor is not None:
            for row in cursor:
                details = BoxLayout(
                    size_hint_y=None, height=30, pos_hint={'top': 1})
                products_container.add_widget(details)
                code = Label(
                    text=str(row[0]), size_hint_x=.2, color=(.06, .45, .45, 1))
                enginNum = Label(
                    text=row[1], size_hint_x=.2, color=(.06, .45, .45, 1))
                model = Label(text=row[3], size_hint_x=.2,
                              color=(.06, .45, .45, 1))
                mile = Label(
                    text=str(row[5]), size_hint_x=.2, color=(.06, .45, .45, 1))
                prodYear = Label(
                    text=str(row[7]), size_hint_x=.2, color=(.06, .45, .45, 1))
                Fuel = Label(text=row[8], size_hint_x=.2,
                             color=(.06, .45, .45, 1))
                details.add_widget(code)
                details.add_widget(enginNum)
                details.add_widget(model)
                details.add_widget(mile)
                details.add_widget(prodYear)
                details.add_widget(Fuel)

        self.ids.country.text = ""


    def BackToDashboard(self):
        self.parent.parent.current = 'dashboardPageScreen'
        self.checkout()


class MainApp(App):
    def build(self):
        return millagePageScreen()


if __name__ == "__main__":
    oa = MainApp()
    oa.run()
