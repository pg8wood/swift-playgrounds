import UIKit


func format(_ number: Double, toDecimalPlaces decimalPlaces: Int) {
    let formattedString = String(format: "%.\(decimalPlaces)f", number)
    print(formattedString)
}

format(12, toDecimalPlaces: 4)

format(12.34, toDecimalPlaces: 0)
format(12.34, toDecimalPlaces: 1)
format(12.34, toDecimalPlaces: 2)
format(12.34, toDecimalPlaces: 3)
