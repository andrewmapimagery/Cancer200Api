//
//  AppDelegate.swift
//  SdkTestNoStoryboard
//
//  Created by Andrew Hunt on 5/7/2022.
//

import UIKit
import Cancer200Api
import MapKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let viewController = MapViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        Cancer200.initApi()
        return true
    }
}
