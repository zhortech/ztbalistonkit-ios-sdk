# ZTBalistonKit

[![Platforms](https://img.shields.io/cocoapods/p/ZTBalistonKit.svg)](https://cocoapods.org/pods/ZTBalistonKit)
[![License](https://img.shields.io/cocoapods/l/ZTBalistonKit)](https://raw.githubusercontent.com/zhortech/ztbalistontkit-ios-sdk/main/LICENSE)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/ZTBalistonKit.svg)](https://cocoapods.org/pods/ZTBalistonKit)

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

## Requirements

- iOS 13.0+
- Xcode 12.0+

## Installation

### Dependency Managers
<details>
  <summary><strong>CocoaPods</strong></summary>

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate ZTBalistonKit into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '13.0'
use_frameworks!

pod 'ZTBalistonKit', :git => "https://github.com/zhortech/ztbalistonkit-ios-sdk.git"
```
Please add post install script at the end of `Podfile` if there is problem to use  library:

```ruby
post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      end
    end
  end
```

Then, run the following command:

```bash
$ pod install
```

</details>

<details>
  <summary><strong>Swift Package Manager</strong></summary>

To use ZTBalistonKit as a [Swift Package Manager](https://swift.org/package-manager/) package just add the following in your Package.swift file.

``` swift
// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ZTBalistonKit",
    dependencies: [
        .package(url: "https://github.com/zhortech/ztbalistonkit-ios-sdk.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(name: "ZTBalistonKit", dependencies: ["ZTBalistonKit"])
    ]
)
```
</details>

### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate ZTBalistonKit into your project manually.

<details>
  <summary><strong>Git Submodules</strong></summary><p>

- Open up Terminal, `cd` into your top-level project directory, and run the following command "if" your project is not initialized as a git repository:

```bash
$ git init
```

- Add ZTBalistonKit as a git [submodule](http://git-scm.com/docs/git-submodule) by running the following command:

```bash
$ git submodule add https://github.com/zhortech/ztbalistonkit-ios-sdk.git
$ git submodule update --init --recursive
```

- Open the new `ZTBalistonKit` folder, and drag the `ZTBalistonKit.xcframework` into the Project Navigator of your application's Xcode project.

    > It should appear nested underneath your application's blue project icon. Whether it is above or below all the other Xcode groups does not matter.

- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- You will see `ZTBalistonKit.framework` nested inside a `Products` folder.

    > It does not matter which `Products` folder you choose from.

- Select the `ZTBalistonKit.framework`.

- And that's it!

> The `ZTBalistonKit.framework` is automagically added as a target dependency, linked framework and embedded framework in a copy files build phase which is all you need to build on the simulator and a device.

</p></details>

<details>
  <summary><strong>Embedded Binaries</strong></summary><p>

- Download the latest release from https://github.com/zhortech/ztbalistonkit-ios-sdk/releases
- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- Add the downloaded `ZTBalistonKit.framework`.
- And that's it!

</p></details>

## Usage

### Product setup

### Mobility Scan

To start mobility scan call method `startMobilityScan`:
```swift

ZTBaliston.shared.startMobilityScan { [weak self] error in
    self?.addLog("Mobility scan started with error=\(error?.localizedDescription ?? "-")")
    debugPrint("Mobility scan started with error \(String(describing: error) ?? "")")
}

```

Mobility scan may not start for several reasons. Corresponding error will be returned in this case. If mobility scan is started - no error will be returned.

To stop mobilty scan call method `stopMobilityScan`. This method will return optional summary information of mobility scan and optional error. 

```swift

ZTBaliston.shared.stopMobilityScan(completion: { [weak self] summary, error in
    debugPrint("Mobility scan stopped with summary=\(String(describing: summary)), error=\(error?.localizedDescription ?? "")")
})

```

Standard automatic activity will be started after mobility scan is stopped. 

### Activity data

### Realtime posture 
To obtain relatime posture you should subscribe to `onRealtimePosturesChange.
```swift

if ZTBaliston.shared.onRealtimePosturesChange.observers.count == 0 {
    ZTBaliston.shared.onRealtimePosturesChange.subscribe(with: self) { (posture) in
        debugPrint(String(describing: posture))
    }
}

```

## Author

ZhorTech [@zhortech](https://twitter.com/zhortech)

## License

ZTBalistonKit is released under the MIT license. See [LICENSE](https://github.com/zhortech/ztbalistonkit-ios-sdk.git/blob/master/LICENSE) for details.
