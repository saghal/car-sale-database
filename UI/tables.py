from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.gridlayout import GridLayout
from kivy.uix.anchorlayout import AnchorLayout
from kivy.lang import Builder

Builder.load_file('tables.kv')


class TablesPageScreen(BoxLayout, GridLayout, AnchorLayout):

    def __init__(self, **kwargs):
        super().__init__(**kwargs)

    def ShiftToProvinceList(self):
        self.parent.parent.current = 'provinceListPageScreen'

    def ShiftToVehicleList(self):
        self.parent.parent.current = 'vehicleListPageScreen'

    def ShiftToCompanyList(self):
        self.parent.parent.current = 'companyListPageScreen'

    def ShiftToBuyList(self):
        self.parent.parent.current = 'buyListPageScreen'

    def ShiftToSaleList(self):
        self.parent.parent.current = 'saleListPageScreen'


    def BackToFirstPage(self):
        self.parent.parent.current = 'firstPageScreen'




class MainApp(App):

    def build(self):
        return TablesPageScreen()


if __name__ == "__main__":
    MainApp().run()
