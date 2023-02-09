import UIKit

let test: () throws -> Void = { print("test") }

// Need to `try` since the body of forEach rethrows the error
try (0..<10).forEach { _ in
    try test()
}
