from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.gridlayout import GridLayout
from kivy.uix.anchorlayout import AnchorLayout
from kivy.lang import Builder

Builder.load_file('dashboard.kv')


class dashboardPageScreen(BoxLayout, GridLayout, AnchorLayout):

    def __init__(self, **kwargs):
        super().__init__(**kwargs)

    def ShiftToCheckBuyFromCountry(self):
        self.parent.parent.current = 'checkBuyFromCountryPageScreen'

    def ShiftToMillage(self):
        self.parent.parent.current = 'millagePageScreen'

    def ShifToCityBranches(self):
        self.parent.parent.current = 'cityBranchesPageScreen'

    def ShifToSumEachBr(self):
        self.parent.parent.current = 'sumSaleEachBranchPageScreen'

    def ShifToSumCar(self):
        self.parent.parent.current = 'sumSaleCarPageScreen'

    def BackToFirstPage(self):
        self.parent.parent.current = 'firstPageScreen'
    


class MainApp(App):

    def build(self):
        return dashboardPageScreen()


if __name__ == "__main__":
    MainApp().run()
