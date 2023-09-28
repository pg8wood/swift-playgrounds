import UIKit

var optionalVar: Optional<Bool> = .none
var nilAsOptionalAny: Any?

func printArgument(_ arg: Any?) {
    if let arg {
        print(arg)
    } else {
        print("nope")
    }
}

printArgument(nilAsOptionalAny)
printArgument(nil)
printArgument(optionalVar)
