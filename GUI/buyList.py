from kivy.uix.label import Label
from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.lang import Builder
import pymssql


Builder.load_file('buyList.kv')


f = open("/home/mohammadsgh/Desktop/pass.txt", "r")
SERVER = "localhost"
USER = "sa"
PASSWORD = f.read().split('\n')[0]
DATABASE = "CarSaleDatabase"
f.close()

connection = pymssql.connect(server=SERVER, user=USER,
                             password=PASSWORD, database=DATABASE)
cursor = connection.cursor()
cursor.execute("SELECT * FROM Buy")


class buyListPageScreen(BoxLayout):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.updateBuy()

    def updateBuy(self):

        BuyContainer = self.ids.buy
        for row in cursor:
            details = BoxLayout(size_hint_y=None, height=30,
                                pos_hint={'top': 1}, padding=5)
            BuyContainer.add_widget(details)

            bID = Label(text=str(row[0]),
                        size_hint_x=.112, color=(.06, .45, .45, 1))
            sID = Label(
                text=str(row[1]), size_hint_x=.112, color=(.06, .45, .45, 1))
            cID = Label(
                text=str(row[2]), size_hint_x=.112, color=(.06, .45, .45, 1))
            bDate = Label(
                text=str(row[3]), size_hint_x=.112, color=(.06, .45, .45, 1))
            price = Label(
                text=str(row[4]), size_hint_x=.112, color=(.06, .45, .45, 1))

            details.add_widget(bID)
            details.add_widget(sID)
            details.add_widget(cID)
            details.add_widget(bDate)
            details.add_widget(price)

        cursor.close()
        connection.close()

    def BackToTablesPage(self):
        self.parent.parent.current = 'TablesListPageScreen'


class MainApp(App):

    def build(self):
        return buyListPageScreen()


if __name__ == "__main__":

    MainApp().run()
