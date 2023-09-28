import Foundation

protocol MyProtocol: Equatable {
    var id: String { get }
}

extension MyProtocol {
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id
    }
}

struct Conformer: MyProtocol {
    let id = UUID().uuidString
}

let myConcreteType1: Conformer = Conformer()
let myConcreteType2: Conformer = Conformer()

// All good - prints false
print(myConcreteType1 == myConcreteType2)


let myExitentialType1: any MyProtocol = Conformer()
let myExitentialType2: any MyProtocol = Conformer()

// Won't compile
print(myExitentialType1 == myExitentialType2)
