from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.label import Label
from kivy.lang import Builder
import pymssql

Builder.load_file('buyCarsDetail.kv')

f = open("/home/mohammadsgh/Desktop/pass.txt", "r")
SERVER = "localhost"
USER = "sa"
PASSWORD = f.read().split('\n')[0]
DATABASE = "CarSaleDatabase"
f.close()

connection = pymssql.connect(server=SERVER, user=USER,
                             password=PASSWORD, database=DATABASE)
cursor = connection.cursor()


class BuyCarPageScreen(BoxLayout):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.update_purchases()

    def update_purchases(self):
        products_container = self.ids.car
        txt = "SELECT * FROM BoughtCarsAllDetail"
        cursor.execute(txt)
        if cursor is not None:
            for row in cursor:
                details = BoxLayout(
                    size_hint_y=None, height=30, pos_hint={'top': 1})
                products_container.add_widget(details)

                cID = Label(
                    text=str(row[0]), size_hint_x=.2, color=(.06, .45, .45, 1))
                model = Label(
                    text=row[1], size_hint_x=.2, color=(.06, .45, .45, 1))
                cName = Label(text=row[2], size_hint_x=.2,
                              color=(.06, .45, .45, 1))
                color = Label(
                    text=row[3], size_hint_x=.2, color=(.06, .45, .45, 1))
                ctype = Label(
                    text=row[4], size_hint_x=.2, color=(.06, .45, .45, 1))
                pyear = Label(text=str(row[5]), size_hint_x=.2,
                              color=(.06, .45, .45, 1))
                fuel = Label(
                    text=row[6], size_hint_x=.2, color=(.06, .45, .45, 1))
                mill = Label(
                    text=str(row[7]), size_hint_x=.2, color=(.06, .45, .45, 1))

                supplier = Label(
                    text=row[8], size_hint_x=.2, color=(.06, .45, .45, 1))

                cityName = Label(
                    text=row[9], size_hint_x=.2, color=(.06, .45, .45, 1))
                provinceName = Label(
                    text=row[10], size_hint_x=.2, color=(.06, .45, .45, 1))
                price = Label(
                    text=str(row[11]), size_hint_x=.2, color=(.06, .45, .45, 1))

                details.add_widget(cID)
                details.add_widget(model)
                details.add_widget(cName)
                details.add_widget(color)
                details.add_widget(ctype)
                details.add_widget(pyear)
                details.add_widget(fuel)
                details.add_widget(mill)
                details.add_widget(supplier)
                details.add_widget(cityName)
                details.add_widget(provinceName)
                details.add_widget(price)

        cursor.close()
        connection.close()

    def BackToDashboard(self):
        self.parent.parent.current = 'dashboardPageScreen'


class MainApp(App):
    def build(self):
        return BuyCarPageScreen()


if __name__ == "__main__":
    oa = MainApp()
    oa.run()
