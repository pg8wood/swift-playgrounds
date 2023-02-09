import UIKit


protocol MyProtocol {
    var nonOptionalString: String { get }
    var implicitlyUnwrappedOptional: String! { get }
}

struct MyStruct: MyProtocol {
    
    // doesn't work: implicitly-unwrapped optional is still an optional
    // let nonOptionalString: String! = "test"
    let nonOptionalString: String = "test"
    
    let implicitlyUnwrappedOptional: String! = "test"
}
