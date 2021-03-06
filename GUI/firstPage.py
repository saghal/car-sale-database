from kivy.app import App 
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.gridlayout import GridLayout
from kivy.lang import Builder

Builder.load_file('firstPage.kv')

class FirstPageScreen(BoxLayout,GridLayout):

    def __init__(self, **kwargs):
        super().__init__(**kwargs)

    def ShiftToTables(self):
        self.parent.parent.current = 'TablesListPageScreen'

    def ShiftToDashboard(self):
        self.parent.parent.current = 'dashboardPageScreen'

class MainApp(App):

    def build(self):
        return FirstPageScreen()


if __name__ == '__main__':

    MainApp().run()
