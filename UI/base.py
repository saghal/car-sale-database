from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.lang import Builder
import firstPage
import province
Builder.load_file('base.kv')

class BasePage(BoxLayout):

    firstPage = firstPage.FirstPageScreen()
    provincePage = province.ProvincePageScreen()
  
    def __init__(self , **kwargs):
        super().__init__(**kwargs)
        self.ids.FirstPage.add_widget(self.firstPage)
        self.ids.ProvincePage.add_widget(self.provincePage)

class MainApp(App):

    def build(self):
        return BasePage()

if __name__ == "__main__":
    MainApp().run()
