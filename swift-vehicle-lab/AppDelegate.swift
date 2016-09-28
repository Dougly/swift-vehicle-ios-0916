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
        
        var jeep = Car(name: "Wrangler", weight: 200, maxSpeed: 150, transmission: "Manual", cylinders: 6, milesPerGallon: 35)
        var boxCar = RaceCar(name: "Speedy", weight: 150, maxSpeed: 200, transmission: "Manual", cylinders: 8, milesPerGallon: 10, driver: "Dougly", sponsors: ["Unity", "His Dog"])
        var f15 = Jet(name: "Death from Above", weight: 300, maxSpeed: 3300, maxAltitude: 5000)
        
        // Do not alter
        return true  //
    }   //////////////
}       /////////////
