import UIKit

let key = "key"
let userDefaults = UserDefaults.standard
var value: Any? {
    userDefaults.object(forKey: "key")
}

userDefaults.set("hello", forKey: "key")
print(value)

// This used to not work right in iOS -= 10, but works correctly now
userDefaults.set(nil, forKey: "key")
print(value)
