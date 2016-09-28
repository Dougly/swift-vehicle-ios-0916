//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Douglas Galante on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar : Car {
    var driver: String
    var sponsors: [String]
    
    init (name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate () {
        if self.speed <= self.maxSpeed {
            self.speed += self.maxSpeed * (1/5)
            if self.speed > self.maxSpeed {
                self.speed = self.maxSpeed
            }
        }
    }
    
    override func decelerate () {
        if self.speed >= 0 {
            self.speed -= self.maxSpeed * (1/5)
            if self.speed < 0 {
                self.speed = 0
            }
        }
    }
    
    func driftRight () {
        if self.speed > 0 {
            self.speed = self.speed * (3/4)
            self.heading = threeSixty(degreeTurn: 90)
        }
    }
    
    func driftLeft () {
        if self.speed > 0 {
            self.speed = self.speed * (3/4)
            self.heading = threeSixty(degreeTurn: -90)
        }
    }


    
}


