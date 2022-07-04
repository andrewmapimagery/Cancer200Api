//
//  AppDelegate.swift
//  SdkTest
//
//  Created by Andrew Hunt on 3/7/2022.
//

import UIKit
import Cancer200Api


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Cancer200.initApi()
        return true
    }
}

