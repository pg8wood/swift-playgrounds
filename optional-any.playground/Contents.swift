import UIKit

class Test { }
let optionalTest: Test? = nil

func printType(_ obj: Any?) {
    print(type(of: obj))
    print(obj == nil)
}

printType(nil)
printType(optionalTest)
printType(Optional<Test>?.none)
