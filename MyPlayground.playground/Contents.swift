//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var name: String
    var weight: Double
    var maxSpeed: Double
    var speed: Double = 0
    var heading: Double = 0
    
    init (name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func printMaxSpeed () {
        print (self.maxSpeed)
        print (maxSpeed)
    }
    
}

var myVehicle = Vehicle(name: "BAE", weight: 75.7, maxSpeed: 33)

myVehicle.printMaxSpeed()

//cant use doube with %
var sampleRemainder: Int = 5 % 8
print (sampleRemainder)

var heading2 = 0.0

func threeSixty (degreeTurn: Double) -> Double {
    var newHeading = heading2 + degreeTurn
    if newHeading > 360 || newHeading < 0 {
        let remainder = Int(newHeading) % 360
        newHeading = Double(remainder)
        if newHeading < 0 {
            newHeading = 360 - (newHeading * -1)
            
        }
    }
    return newHeading
}

print (threeSixty(degreeTurn: 90))
print (threeSixty(degreeTurn: -90))

var int:Double = 1/5
print (int)











