import UIKit

struct Fraction {
    let numerator: Int
    let denominator: Int
    
    var integerDivisionDecimal: Decimal {
        Decimal(numerator / denominator)
    }
    
    var correctDecimal: Decimal {
        Decimal(numerator) / Decimal(denominator)
    }
}

let value = Fraction(numerator: 9, denominator: 2)
print(value.integerDivisionDecimal) // 4
print(value.correctDecimal) // 4.5

