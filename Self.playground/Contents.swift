import UIKit

protocol Beverage {
    var name: String { get }
    var arrayTest: [Self] { get }
}

extension Beverage {
    var arrayTest: [Self] {
        [self]
    }
}

struct Soda: Beverage {
    let name = "Soda"
}

struct Tea: Beverage {
    let name = "Tea"
}

print(Soda().arrayTest)
