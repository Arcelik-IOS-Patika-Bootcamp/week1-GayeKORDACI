import UIKit

var str = "1. Hafta Ödevi"

enum PackageName :Int{
    case prime = 0
    case primeSelection = 1
    case allureSelection = 2
    case gt = 3
    
}
enum Colors : Int {
    case white = 0
    case yellow = 1
    case gray = 2
    case blue = 3
    case red = 4
}
enum OrderStatus : String{
    case successed = "Sipariş başarıyla oluşturuldu."
    case failed = "Sipariş başarısız"
    case paymentInProcess = "Kapora alındı."
    case readyForSale = "Satışa hazır."
}
enum StockStatus : String {
    case noStock = "Stok yok."
    case lowStock = "Kritik stok."
    case normalStock = "Stok var"
}
class Cars{
    var distributor : String = "Peugeot Turkey"
    var modelName : String = "208"
    var package : PackageName = .prime
    var color : Colors = .white
    private var stock : Int = 0
    var price : Double?
    var orderStatus : OrderStatus = .readyForSale
    var stockStatus : StockStatus = .normalStock
    
    
    init(modelName: String, package: PackageName, color: Colors, stock: Int, price : Double) {
        self.modelName = modelName
        self.package = package
        self.color = color
        self.stock = stock
        self.price = price
    }
}


