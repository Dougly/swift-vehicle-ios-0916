//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Douglas Galante on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    override func climb () {
        if self.altitude < maxAltitude && self.inFlight {
            self.altitude += self.maxAltitude * 0.2
            decelerate()
        } else if self.altitude > self.maxAltitude {
            self.altitude = self.maxAltitude
        }
    }
    
    override func dive () {
        if self.altitude > 0 {
            self.altitude -= self.maxAltitude * 0.2
            accelerate()
        } else if self.altitude < 0 {
            self.altitude = 0
        }
    }
    
    func afterburner () {
        if inFlight && self.maxSpeed == self.speed {
            self.speed = self.maxSpeed * 2
            
        }
    }
}

