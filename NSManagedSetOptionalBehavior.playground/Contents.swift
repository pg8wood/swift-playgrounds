import UIKit
import CoreData

class Test: NSManagedObject {
    @NSManaged var set: Set<String>?
}


let test = Test(context: NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType))
test.set?.insert("Hello!")
print(test.set)
