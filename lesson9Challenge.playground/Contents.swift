struct TaxCalculator {
    var tax:Double = 10.0
    func totalWithTax(price:Double) -> Double {
        return price + tax
    }
}

struct BillSplitter {
    func splitBy(subtotal:Double, numberOfPeople:Int) -> Double {
        let totalTax:TaxCalculator = TaxCalculator()
        return totalTax.totalWithTax(price: subtotal)/Double(numberOfPeople)
    }
}

var bill:BillSplitter = BillSplitter()
var billingAmount = bill.splitBy(subtotal: 120, numberOfPeople: 5)
print(billingAmount)
