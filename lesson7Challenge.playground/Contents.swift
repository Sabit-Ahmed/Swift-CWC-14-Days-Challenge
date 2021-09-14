func goodMorning() {
    print("Good Morning")
}
goodMorning()


func printTotalWithTax(subtotal:Double){
    print(subtotal*1.13)
}
printTotalWithTax(subtotal: 10)


func getTotalWithTax(subtotal:Double) -> Double {
    return subtotal*1.13
}
print(getTotalWithTax(subtotal: 10))


func calculateTotalWithMax(subtotal:Double, tax:Double) -> Double {
    return subtotal*tax
}
print(calculateTotalWithMax(subtotal: 10, tax: 1.13))
