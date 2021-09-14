func myFunc(a:Int=5, b:Float=5) {
    print(a+Int(b))
}

myFunc(a: 10, b: 10)


func myFunc2(a:Float = 5.1) -> Float {
    let b:Float = 2.5
    return a+b
}

var output = myFunc2(a: 5.5)
print(output)
