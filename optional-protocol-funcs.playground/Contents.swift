import UIKit

@objc protocol HasOptionalFunc {
    @objc optional func optionalFunction() -> Int
}

class Adopter: HasOptionalFunc { }

let adopter: HasOptionalFunc = Adopter()
print(adopter.optionalFunction?()) // Expression implicitly coerced from 'Int?' to 'Any'
// swift makes you unwrap the optional function in order to use it
// objc lets you call it directly & crashes if it is nil
