from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.label import Label
from kivy.lang import Builder
import pymssql

Builder.load_file('sumSaleEachBranch.kv')

f = open("/home/mohammadsgh/Desktop/pass.txt", "r")
SERVER = "localhost"
USER = "sa"
PASSWORD = f.read().split('\n')[0]
DATABASE = "CarSaleDatabase"
f.close()

connection = pymssql.connect(server=SERVER, user=USER,
                             password=PASSWORD, database=DATABASE)
cursor = connection.cursor()


class sumSaleEachBranchPageScreen(BoxLayout):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.update_purchases()


    def update_purchases(self):
        products_container = self.ids.city
        txt = "EXECUTE CityAndBranchSumSale"
        cursor.execute(txt)
        if cursor is not None:
            for row in cursor:
                details = BoxLayout(
                    size_hint_y=None, height=30, pos_hint={'top': 1})
                products_container.add_widget(details)
                brName = Label(text=row[1], size_hint_x=.2, color=(.06, .45, .45, 1))
                code = Label(text=str(row[0]), size_hint_x=.2, color=(.06, .45, .45, 1))
                cName = Label(text=row[2], size_hint_x=.2, color=(.06, .45, .45, 1))
                sumBR = Label(text=str(row[3]), size_hint_x=.2, color=(.06, .45, .45, 1))
                SumC = Label(text=str(row[4]), size_hint_x=.2, color=(.06, .45, .45, 1))

                details.add_widget(code)
                details.add_widget(brName)
                details.add_widget(cName)
                details.add_widget(sumBR)
                details.add_widget(SumC)
        cursor.close()
        connection.close()


    def BackToDashboard(self):
        self.parent.parent.current = 'dashboardPageScreen'



class MainApp(App):
    def build(self):
        return sumSaleEachBranchPageScreen()


if __name__ == "__main__":
    oa = MainApp()
    oa.run()
