from kivy.uix.label import Label
from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.lang import Builder
import pymssql


Builder.load_file('vehicleList.kv')


f = open("/home/mohammadsgh/Desktop/pass.txt", "r")
SERVER = "localhost"
USER = "sa"
PASSWORD = f.read().split('\n')[0]
DATABASE = "CarSaleDatabase"
f.close()

connection = pymssql.connect(server=SERVER, user=USER,
                             password=PASSWORD, database=DATABASE)
cursor = connection.cursor()
cursor.execute("SELECT * FROM Vehicle")


class vehicleListPageScreen(BoxLayout):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.updateVehicle()

    def updateVehicle(self):

        Vehiclecontainer = self.ids.vehicle
        colors = (.06, .45, .45, 1)
        for row in cursor:
            details = BoxLayout(size_hint_y=None, height=30, pos_hint={'top': 1}, padding=5)
            Vehiclecontainer.add_widget(details)

            carID = Label(text=str(row[0]), size_hint_x=.112, color=(.06, .45, .45, 1))
            EngineNumber = Label(text=str(row[1]), size_hint_x=.350, color=(.06, .45, .45, 1))
            CompanyID = Label(text=str(row[2]), size_hint_x=.112, color=(.06, .45, .45, 1))
            Model = Label(text=str(row[3]), size_hint_x=.350, color=(.06, .45, .45, 1))
            ColorID = Label(text=str(row[4]), size_hint_x=.112, color=(.06, .45, .45, 1))
            Miles = Label(text=str(row[5]), size_hint_x=.350, color=(.06, .45, .45, 1))
            TypeID = Label(text=str(row[6]), size_hint_x=.112, color=(.06, .45, .45, 1))
            ProductionYear = Label(text=str(row[7]), size_hint_x=.350, color=(.06, .45, .45, 1))
            Fuel = Label(text=str(row[8]), size_hint_x=.112,color=(.06, .45, .45, 1))


            details.add_widget(carID)
            details.add_widget(EngineNumber)
            details.add_widget(CompanyID)
            details.add_widget(Model)
            details.add_widget(ColorID)
            details.add_widget(Miles)
            details.add_widget(TypeID)
            details.add_widget(ProductionYear)
            details.add_widget(Fuel)
       
        cursor.close()
        connection.close()

    def BackToTablesPage(self):
        self.parent.parent.current = 'TablesListPageScreen'




class MainApp(App):

    def build(self):
        return vehicleListPageScreen()


if __name__ == "__main__":

    MainApp().run()
