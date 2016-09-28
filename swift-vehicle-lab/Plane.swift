//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Douglas Galante on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle {
    var maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool { return self.altitude > 0 && self.speed > 0 }
    
    init (name: String, weight: Double, maxSpeed: Double, maxAltitude: Double){
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff () {
        if !inFlight {
            self.speed = self.maxSpeed * 0.1
            self.altitude = self.maxAltitude * 0.1
        }
    }
    
    func land () {
        self.speed = 0
        self.altitude = 0
    }
    
    func climb () {
        if self.altitude < maxAltitude && self.inFlight {
            self.altitude += self.maxAltitude * 0.1
            decelerate()
        } else if self.altitude > self.maxAltitude {
            self.altitude = self.maxAltitude
        }
    }
    
    func dive () {
        if self.altitude > 0 {
            self.altitude -= self.maxAltitude * 0.1
            accelerate()
        } else if self.altitude < 0 {
            self.altitude = 0
        }
    }
    
    func bankRight () {
        if self.inFlight {
            self.speed = self.speed * 0.9
            self.heading = threeSixty(degreeTurn: 45)
        }
    }
    
    func bankLeft () {
        if self.inFlight {
            self.speed = self.speed * 0.9
            self.heading = threeSixty(degreeTurn: -45)
        }
    }
    
}

