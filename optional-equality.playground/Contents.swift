import UIKit

struct Holder {
    let condition: Bool = true
}

var holder: Holder?

print(holder?.condition == false)
holder = Holder()
print(holder?.condition == false)
