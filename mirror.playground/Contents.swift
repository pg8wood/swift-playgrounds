import UIKit

struct Candy {
    enum CandyType {
        case chocolate
        case fruity
    }
    
    let name: String
    let numberOfIngredients: Int
    let type: CandyType
    let optional: String?
    let anotherOptional: String?
}

let candy = Candy(
    name: "Reese's",
    numberOfIngredients: 2,
    type: .chocolate,
    optional: nil,
    anotherOptional: "test"
)

protocol Describable: CustomStringConvertible {
    var description: String { get }
}

extension Describable {
    var description: String {
        let mirror = Mirror(reflecting: self)
        let propertyDescriptions = mirror.children
            .compactMap { child -> (key: String, value:String)? in
                guard let label = child.label else { return nil }
                return (label, interpolatedValue(of: child.value))
            }.sorted {
                $0.key < $1.key
            }.map {
                "\($0.key): \($0.value)"
            }
        
        return propertyDescriptions.joined(separator: ", ")
    }
    
    /// Returns a String representing the given value, omitting the `Optional` portion
    /// if the value is wrapped in an Optional.
    private func interpolatedValue(of value: Any) -> String {
        switch value {
        case Optional<Any>.none:
            return "nil"
        case Optional<Any>.some(let wrappedValue):
            return "\(wrappedValue)"
        default:
            return "\(value)"
        }
    }
}


extension Candy: Describable {
    
}

print(candy.description)
