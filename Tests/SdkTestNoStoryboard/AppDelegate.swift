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
    var initialViewController :UIViewController?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let mapView = MKMapView()
        let viewController = MapViewController(mapView: mapView)
        let navigationController = UINavigationController(rootViewController: viewController)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        Cancer200.initApi()
        return true
    }
}
