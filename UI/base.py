from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.lang import Builder
import firstPage
import tables
import provinceList
import vehicleList
Builder.load_file('base.kv')

class BasePage(BoxLayout):

    firstPage = firstPage.FirstPageScreen()
    tablesPage = tables.TablesPageScreen()
    provinceListPage = provinceList.ProvinceListPageScreen()
    vehicleListPage = vehicleList.vehicleListPageScreen()



    def __init__(self , **kwargs):
        super().__init__(**kwargs)
        self.ids.FirstPage.add_widget(self.firstPage)
        self.ids.TablesListPage.add_widget(self.tablesPage)
        self.ids.ProvinceListPage.add_widget(self.provinceListPage)
        self.ids.VehicleListPage.add_widget(self.vehicleListPage)


class MainApp(App):

    def build(self):
        return BasePage()

if __name__ == "__main__":
    MainApp().run()
