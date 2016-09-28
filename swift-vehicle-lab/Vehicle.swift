//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Douglas Galante on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

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
    
    func threeSixty (degreeTurn: Double) -> Double {
        var newHeading = self.heading + degreeTurn
        if newHeading > 360 || newHeading < 0 {
            let remainder = Int(newHeading) % 360
            newHeading = Double(remainder)
            if newHeading < 0 {
                newHeading = 360 - (newHeading * -1)
            }
        }
        return newHeading
    }
    
    func goFast () {
        self.speed = self.maxSpeed
    }
    
    func halt () {
        self.speed = 0
    }
    
    func accelerate () {
        if self.speed <= self.maxSpeed {
            self.speed += self.maxSpeed * 0.1
            if self.speed > self.maxSpeed {
                self.speed = self.maxSpeed
            }
        }
    }
    
    func decelerate () {
        if self.speed >= 0 {
            self.speed -= self.maxSpeed * 0.1
            if self.speed < 0 {
                self.speed = 0
            }
        }
    }
    
    func turnRight () {
        if self.speed > 0 {
            self.speed = self.speed / 2
            self.heading = threeSixty(degreeTurn: 90)
        }
    }
    
    func turnLeft () {
        if self.speed > 0 {
            self.speed = self.speed / 2
            self.heading = threeSixty(degreeTurn: -90)
        }
    }
}
