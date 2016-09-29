//
//  AppDelegate.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let jeep = Car(name: "Wrangler", weight: 200, maxSpeed: 150, transmission: "Manual", cylinders: 6, milesPerGallon: 35)
        let boxCar = RaceCar(name: "Speedy", weight: 150, maxSpeed: 200, transmission: "Manual", cylinders: 8, milesPerGallon: 10, driver: "Dougly", sponsors: ["Unity", "His Dog"])
        let f15 = Jet(name: "Death from Above", weight: 300, maxSpeed: 3300, maxAltitude: 5000)
        let commercial747 = Plane(name: "747", weight: 7000, maxSpeed: 500, maxAltitude: 2000)
        
        jeep.accelerate()
        jeep.goFast()
        jeep.brake()
        jeep.brake()
        jeep.turnLeft()
        jeep.halt()
        
        func accelerateToMaxSpeed (raceCar x: RaceCar) {
            for _ in 0...1000 {
                if x.speed < x.maxSpeed {
                    x.accelerate()
                    break
                }
            }
        }
        
        accelerateToMaxSpeed(raceCar: boxCar)
        print(boxCar.speed)
        print(boxCar)
        
        f15.takeoff()
        f15.accelerate()
        print(f15.maxSpeed)
        f15.afterburner()
        f15.dive()
        f15.climb()
        print(f15.speed)
        f15.land()
        
        
        
        // Do not alter
        return true  //
    }   //////////////
}       /////////////
