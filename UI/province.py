from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.gridlayout import GridLayout
from kivy.uix.anchorlayout import AnchorLayout
from kivy.lang import Builder

Builder.load_file('province.kv')


class ProvincePageScreen(BoxLayout, GridLayout, AnchorLayout):

    def __init__(self, **kwargs):
        super().__init__(**kwargs)

    def ShiftToProvinceList(self):
        self.parent.parent.current = ''

    def BackToFirstPage(self):
        self.parent.parent.current = 'firstPageScreen'




class MainApp(App):

    def build(self):
        return ProvincePageScreen()


if __name__ == "__main__":
    MainApp().run()
