from kivy.uix.label import Label
from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.lang import Builder
import pymssql


Builder.load_file('provinceList.kv')


SERVER = "localhost"
USER = "sa"
PASSWORD = ""
DATABASE = "CarSaleDatabase"

connection = pymssql.connect(server=SERVER, user=USER,
                                    password=PASSWORD, database=DATABASE)
cursor = connection.cursor()
cursor.execute("SELECT * FROM Province")



class ProvinceListPageScreen(BoxLayout):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.updateProvince()

    def updateProvince(self):

        products_container = self.ids.products

        for row in cursor:
            details = BoxLayout(size_hint_y=None, height=30, pos_hint={
                                'top': 1}, padding=5)
            products_container.add_widget(details)

            name = Label(text=str(row[0]), size_hint_x=.112,
                         color=(.06, .45, .45, 1))
            qty = Label(text=row[1], size_hint_x=.350, color=(.06, .45, .45, 1))
            details.add_widget(name)
            details.add_widget(qty)
        


    def BackToProvincePage(self):
        self.parent.parent.current = 'provincePageScreen'




class MainApp(App):

    def build(self):
        return ProvinceListPageScreen()


if __name__ == "__main__":

    MainApp().run()
