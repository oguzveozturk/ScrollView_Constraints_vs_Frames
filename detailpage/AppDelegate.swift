//
//  AppDelegate.swift
//  detailpage
//
//  Created by Oguz on 11.01.2020.
//  Copyright © 2020 Oguz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = WithConstraints()
        window?.makeKeyAndVisible()
        return true
    }
}


