from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.lang import Builder
import firstPage
import tables
import provinceList
import vehicleList
import companyList
import buyList
import saleList
import branchList
import customerList
import supplierList
import dashboard
import checkFrom
import millage
import cityBranches
import sumSaleEachBranch
Builder.load_file('base.kv')

class BasePage(BoxLayout):

    firstPage = firstPage.FirstPageScreen()
    tablesPage = tables.TablesPageScreen()
    provinceListPage = provinceList.ProvinceListPageScreen()
    vehicleListPage = vehicleList.vehicleListPageScreen()
    companyListPage = companyList.companyListPageScreen()
    buyListPage = buyList.buyListPageScreen()
    saleListPage = saleList.saleListPageScreen()
    branchListPage = branchList.branchListPageScreen()
    customerListPage = customerList.customerListPageScreen()
    supplierListPage = supplierList.supplierListPageScreen()
    dashboardPage = dashboard.dashboardPageScreen()
    checkBuyFromCountryPage = checkFrom.checkBuyFromCountryPage()
    millagePage = millage.millagePageScreen()
    cityBranchesPage = cityBranches.cityBranchesPageScreen()
    sumSaleEachBranchPage = sumSaleEachBranch.sumSaleEachBranchPageScreen()

    def __init__(self , **kwargs):
        super().__init__(**kwargs)
        self.ids.FirstPage.add_widget(self.firstPage)
        self.ids.TablesListPage.add_widget(self.tablesPage)
        self.ids.ProvinceListPage.add_widget(self.provinceListPage)
        self.ids.VehicleListPage.add_widget(self.vehicleListPage)
        self.ids.CompanyListPage.add_widget(self.companyListPage)
        self.ids.BuyListPage.add_widget(self.buyListPage)
        self.ids.SaleListPage.add_widget(self.saleListPage)
        self.ids.BranchListPage.add_widget(self.branchListPage)
        self.ids.CustomerListPage.add_widget(self.customerListPage)
        self.ids.SupplierListPage.add_widget(self.supplierListPage)
        self.ids.DashboardPage.add_widget(self.dashboardPage)
        self.ids.CheckBuyFromCountryPage.add_widget(self.checkBuyFromCountryPage)
        self.ids.MillagePage.add_widget(self.millagePage)
        self.ids.CityBranchesPage.add_widget(self.cityBranchesPage)
        self.ids.SumSaleEachBranchPage.add_widget(self.sumSaleEachBranchPage)


class MainApp(App):

    def build(self):
        return BasePage()

if __name__ == "__main__":
    MainApp().run()
