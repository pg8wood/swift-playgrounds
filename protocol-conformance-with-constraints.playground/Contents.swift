import Foundation

protocol UniversalDonating { }

protocol Blood {}

struct OPositive: Blood {}
struct ONegative: Blood, UniversalDonating {}


@resultBuilder
struct TransfusionBuilder<BloodType: Blood> {
    static func buildPartialBlock(first: BloodType) -> BloodType {
        first
    }
    
    static func buildPartialBlock(accumulated: BloodType, next: BloodType) -> BloodType {
        next // contrived example
    }
    
//    static func buildExpression(_ expression: BloodType) -> BloodType {
//        expression
//    }
}

extension TransfusionBuilder where BloodType: UniversalDonating {
    static func buildExpression(_ expression: String) -> some Blood {
        ONegative()
    }
}

@TransfusionBuilder<ONegative> var test: some Blood {
    ONegative()
}
print(test)
