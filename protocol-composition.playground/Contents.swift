import UIKit

protocol StateController: Updating, Saving {
    
}

protocol Updating {
    func update()
}

protocol Saving {
    func save()
}

struct StateImpl: StateController {
    func update() {
        print("\(#function)")
    }
    
    func save() {
        print("\(#function)")
    }
}

StateImpl().update()
StateImpl().save()
