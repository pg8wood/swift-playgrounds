import UIKit

public struct Place {
    let name: String
}

public protocol Visitable {
    var state: State { get }
}

public struct State {
    @Bridged var place: Place
}


@propertyWrapper
public struct Bridged<T> {
    var wrappedValue: T
    
    init(_ wrappedValue: T) {
        // bridging logic
    }
}

//extension Bridged where T: //someting {
// // custom bridging
//}
