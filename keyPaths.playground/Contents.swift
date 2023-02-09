import Foundation

@objc class Spaceship: NSObject {
    @objc let name: String
    @objc let shipDescription: String?
    @objc let cost: Int
    
    init(name: String, description: String? = nil, cost: Int) {
        self.name = name
        self.shipDescription = description
        self.cost = cost
    }
}

extension Spaceship {
    static let deathStar = Spaceship(name: "Death Star", cost: .max)
    static let tardis = Spaceship(
        name: "Tardis",
        description: "Time And Relative Dimension In Space",
        cost: 100
    )
}

let predicate = NSPredicate(format: "shipDescription LIKE %@", "T")
print([Spaceship.deathStar, .tardis].filter(predicate.evaluate(with:)).map(\.name))
