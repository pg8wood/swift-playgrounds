import UIKit
import Foundation

@objc class ManagedLibrarySummary: NSObject {
    @objc var itemVariations: NSArray = .init(array: [Test(), Test()])
}

@objc class Test: NSObject {
    @objc var sku = "0F73233C-9E64-45B4-B466-2F5EE4EF212F"
    @objc var gtin = "test"
}

let summaries = NSArray(array: [ManagedLibrarySummary()])

private func makeSKUOrGTINPredicate(searchString: String) -> NSPredicate {
    let subqueryPredicates = [
        NSPredicate(format: "$x.sku LIKE[cd] %@", searchString + "*"),
        NSPredicate(format: "$x.gtin LIKE[cd] %@", searchString + "*"),
    ]
    
    let subqueryExpression = NSExpression(
        forSubquery: NSExpression(forKeyPath: #keyPath(ManagedLibrarySummary.itemVariations)),
        usingIteratorVariable: "x",
        predicate: NSCompoundPredicate(orPredicateWithSubpredicates: subqueryPredicates)
    )
    
    return NSComparisonPredicate(
        leftExpression: subqueryExpression,
        rightExpression: NSExpression(forConstantValue: 0),
        modifier: .direct,
        type: .greaterThan,
        options: .init(rawValue: 0)
    )
}
let predicate = NSCompoundPredicate(orPredicateWithSubpredicates: [
        NSPredicate(format: "sku LIKE[cd] %@", "0F73233C" + "*"),
        NSPredicate(format: "gtin LIKE[cd] %@", "0F73233C" + "*"),
])
print(predicate.predicateFormat)
print(summaries.filtered(using: predicate).count)
