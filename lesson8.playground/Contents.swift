struct Car {
    public var prefix:String = "Hello! It is "
    private var make:String = "Toyota"
    private var model:String = "Corolla"
    private var year:String = "2020"
    
    private var details:String {
        year + " " + make + " " + model
    }
    
    func getDetails() -> String {
        return details
    }
}

var myCar = Car()
print(myCar.prefix + myCar.getDetails())

var myCar2:Car = Car()
myCar2.prefix = "Hi! No, it is not "
print(myCar2.prefix + myCar2.getDetails())
