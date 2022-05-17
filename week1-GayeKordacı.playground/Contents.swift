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
    
    func giveOrderInfo() -> String
        {
            return "Order --> Distributor : \(distributor) - Name:\(modelName) - Package:\(package) - Color:\(color) - Stock:\(stock) - Price: \(price ?? 0)"
        }
    func discount(_ price: Double) -> Double
        {
            self.price = price * 0.9
            return price
        }
    func checkOrder() -> Bool {
            switch stock {
            case 0:
                stockStatus = .noStock
                print(stockStatus.rawValue)
                return false
            case 1..<10:
                stockStatus = .lowStock
                print(stockStatus.rawValue)
                return true
            default:
                stockStatus = .normalStock
                print(stockStatus.rawValue)
                return true
            }
        }
    func createOrder(){
            if !checkOrder() {
                return
            }else {
                orderStatus = .paymentInProcess
                print(orderStatus.rawValue)
                print(giveOrderInfo())
            }
            
        }

}


let order1 = Cars(modelName: "508", package: .gt, color: .blue, stock: 10, price: 900000)
let order2 = Cars(modelName: "208", package: .allureSelection, color: .yellow, stock: 5, price: 600000)
let order3 = Cars(modelName: "308", package: .prime, color: .red, stock: 0, price: 750000)

order1.discount(order1.price ?? 0)

order1.createOrder()

order2.createOrder()

order3.createOrder()

