# Cancer200 Api Swift Package

## Summary
* The Cancer200Api Swift Package is a binary framework that allows a cut down version of the Cancer200 map and associated tracking tools to be imbedded into another app. It has a simple interface and is packaged as an xcframework including both simulator and ios libraries in one archive.
* Included in the package is an example program showing a very simple integration with the framework.
* Although packaged as a Swift Package Manager module, the Cancer200Api.xcframework could be manually integrated into a project without using SPM.
* In addition to linking with the library there are some capabilities and other configuration that is required for the sdk to work imbedded in an app because the sdk needs background modes, some Info.plist privacy strings and some ATS exceptions in order to function properly.


## Requirements
* [iOS 12.0](https://wikipedia.org/wiki/IOS_12) or later.
* [Xcode 12.0](https://developer.apple.com/xcode) or later.

## Integration of the Api
```swift
dependencies: [
    .package(url: "https://github.com/andrewmapimagery/Cancer200Api.git", .upToNextMinor(from: "2022.0.0"))
]
```

## Alternative Integration
Alternatively using the Xcode UI under Project -> Packaged Dependencies add a package dependency to https://github.com/andrewmapimagery/Cancer200Api.git

With this style of integration You may also have to manually add the following dependencies that are required for the Cancer200Api framework.  You can see this in the example program provided in the Tests directory of the SPM repo.

```
dependencies: [
        .package(
            url: "https://github.com/pkluz/PKHUD.git",
            from: "5.4.0"
        ),
        .package(
            url: "https://github.com/SnapKit/SnapKit.git",
            from: "5.6.0"
        ),
        .package(
            url: "https://github.com/malcommac/SwiftLocation.git",
            from: "5.1.0"
        )
    ],
```

## Integration Requirements

### Working Example
See the example app in the Tests directory for a working example


### Initialisation of the Cancer200Api
The following initialisation code needs to be called in the didFinishLaunchingWithOptions AppDelegate. This initialises the Api in particular setting up lifecycle observers that start and stop location updates and map updates when the app changes state for example from foreground to background.


```
import UIKit
import Cancer200Api
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customisation after application launch.
        Cancer200.initApi()
        return true
    }
}
```

### Imbedded MapViewController
The main integration is via instantiating a MapViewController public class from the Cancer200Api framework.  An example can be seen in the test app. This MapViewController class expects that the MapViewController will be imbedded in a NavigationController and it attaches buttons and titles to the Navigation Bar of the Navigation Controller. One way of doing this integration is via a MapViewController imbedded within a Navigation Controller in a storyboard.  Alternatively this can be done programatically. 

```
class ViewController: MapViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
```

### App Transport Security exceptions
An exception is required for the mapswim.net domain to allow http loads from endpoints on this domain.

```
	<key>NSAppTransportSecurity</key>
	<dict>
		<key>NSExceptionDomains</key>
		<dict>
			<key>mapswim.net</key>
			<dict>
				<key>NSExceptionAllowsInsecureHTTPLoads</key>
				<true/>
				<key>NSIncludesSubdomains</key>
				<true/>
			</dict>
		</dict>
	</dict>
```


### App Background modes required

```
	<key>UIBackgroundModes</key>
	<array>
		<string>fetch</string>
		<string>location</string>
	</array>
```


### Location privacy Info.plist strings required
The following location privacy descriptions need to be set up as the map requires all of these permissions including background.

```
	<string>Location services 'Always' are required if you want to show your position on the map when the app is in background. Location services 'While Using the App' are required if you want to use the app to navigate using  map.</string>
	<key>NSLocationAlwaysUsageDescription</key>
	<string>Location services 'Always' are required if you want to share your position on the map when the app is in background.</string>
	<key>NSLocationWhenInUseUsageDescription</key>
	<string>Location services 'While Using the App' are required if you want to use the app to navigate using the dashboard or map.</string>
```


## License
The **Cancer 200 Api** framework is the property of MapImagery Pty Ltd and should only be used with the explicit consent of MapImagery Pty Ltd.
