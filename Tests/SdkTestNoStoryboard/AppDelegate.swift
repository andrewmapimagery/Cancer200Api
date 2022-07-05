//
//  AppDelegate.swift
//  SdkTestNoStoryboard
//
//  Created by Andrew Hunt on 5/7/2022.
//

import UIKit
import Cancer200Api

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var initialViewController :UIViewController?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = ViewController()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        Cancer200.initApi()
        return true
    }
}
