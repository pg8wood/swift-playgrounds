import UIKit

class Test {
    lazy var lazyValue: String = value()
    
    func value() -> String { "hello" }
}

let test = Test()
test.lazyValue = "world"

print(test.lazyValue)
