import UIKit

class Superclass: NSObject {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class Subclass1: Superclass {
    override init(name: String) {
        super.init(name: "subclass")
        print("called subclass init")
    }
}


let array: [Superclass] = [Superclass(name: ""), Subclass1(name: "")]
print(array.map(\.name))

let polymorphicSubclassReference: Superclass = Subclass1(name: "test")
print(polymorphicSubclassReference.name)
