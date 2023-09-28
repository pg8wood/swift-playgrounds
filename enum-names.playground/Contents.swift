import UIKit

enum Outer {
    enum Inner {
        static func printName() {
            print(type(of: self))
        }
    }
}

Outer.Inner.printName()
