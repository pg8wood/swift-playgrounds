import UIKit

var num: Int?

num = num != nil ? 3 : nil
print(num)


Float(0.1).rounded()
Float(0.6).rounded()


let weights: [Double] = [0.3, 0.5, 0.7, 0.9, 0.4, 0.3]
let total = weights.reduce(0, +)
let targetValue: Double = 1.0
print(targetValue)
let multiplier = targetValue / total
let adjustedWeights: [Double] = weights.map { $0 * multiplier }
print(adjustedWeights)
let adjustedTotal = adjustedWeights.reduce(0, +)
print(adjustedTotal)
print(targetValue ~= adjustedTotal)
print(abs(targetValue - adjustedTotal) <= .ulpOfOne)

