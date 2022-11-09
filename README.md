# Sightic Analytics iOS SDK

The Sightic Analytics iOS SDK detects the influence of drugs and alcohol through image analysis of the eye area. The SDK makes it possible to integrate this functionality in an iOS app.

## Requirements

* Platforms
  * iOS 15
  * iPhone X or later (except iPhone SE) is recommended
* Programming languages
  * Swift 5
  * No Objective-C support
* Package managers
  * Swift Packages
  * No CocoaPods support
  * No Carthage support

## API key

The SDK requires an API key in order to provide the app with a result. Please get in contact with [Eyescanner](https://www.eyescanner.se/contact) to retrieve a key.

## License

The Sightic Analytics iOS SDK is commerical software.

## Support

Please get in contact with [Eyescanner](https://www.eyescanner.se/contact) for support.

## How to use SDK

1. Add SighticAnalytics as a Swift package to your app using the URL https://github.com/EyescannerTechnology/sightic-sdk-ios. You can also [add the SDK as a xcframework](https://github.com/EyescannerTechnology/sightic-sdk-quickstart-app-ios#add-sdk-as-xcframework-instead-of-swift-package).
1. Add the SwiftUI view `SighticView` somewhere in your app. You must let the view occupy the **whole** screen. The view requires:
   * An API key
   * A Completion handler of type `(SighticRecordingResult) -> ()`.
1. Show the `SighticView` view to start the test. The face of the user will be recorded during a test sequence involving eye movements.
1. The `SighticView` triggers a callback to the app to indicate that the recording has finished. The app receives a `SighticRecordingResult` object through the callback.
1. `SighticRecordingResult` is a result type that contains either a `SighticRecording` or a `SighticError`. `SighticRecording` implements a function named `performInference`.
1. The app shall call the `performInference` method to send the recorded data to the `Sightic` server for analysis.
1. `performInference` is an async function and will return a `SighticInferenceResult` object when done.
1. `SighticInferenceResult` is a result type that contains either a `SighticInference` or a `SighticError`.
1. The `SighticInference` object contains a `bool` property named `hasImpairment` and an `Int` property named `confidence` betwen 0 to 100 that can be used by the app to present the result.

## Quickstart app

There is a [Quickstart app](https://github.com/EyescannerTechnology/sightic-sdk-quickstart-app-ios) available that shows how to integrate the SDK.

## Custom strings

A number of user-visible strings can be customized by the host application, by implementing the protocol `SighticStrings` and providing an instance to the `SighticInferenceView`. This could for example be used to add support for more languages. The host application is then expected to return a non-nil string for each property defined by the protocol. The protocol is documented with a brief comment of what the string is supposed to say.

If a `nil` value is returned, the SDK will fallback to a default value based on the current language setting. For this to work properly it is important that the returned value is `nil`, and not any other default value.

To add custom strings, do the following:

* Create a new type that implements `protocol SighticStrings` (a struct for example).
* Return a custom string for each property.
* Assign an instance to the static property `SighticAnalytics.Strings.customStrings` somewhere in your app's initialization phase.

For example:

```swift
struct MyStrings: SighticStrings {
    
    var alignHoldCloser: String? {
        let str = NSLocalizedString("sightic-align-hold-closer", comment: "")
        return str != "sightic-align-hold-closer" ? str : nil // nil if not found
    }
    
    // ... repeat for every property ...
}
```

### Providing strings to SDK

```swift
@main
struct MyApp: App {
    init() {
        SighticAnalytics.Strings.customStrings = MyStrings()
    }
    
    var body: some Scene {
      WindowGroup {
        ContentView()
      }
    }
```

## How to check device and SDK support

### Is the SDK version supported?

```swift
switch await SighticVersion.sdkVersions(apiKey: "your-api-key-here") {
case let .success(sdkVersions):
    if sdkVersions.isCurrentVersionSupported {
        // Start using the SDK.
    }
    else {
        // Using the current version is not recommended.
        print("Current version (\(SighticVersion.sdkVersion)) is unsupported.")
        print("Supported versions are: \(sdkVersions.supportedVersions)")
    }
case let .failure(error):
    print("an error occurred: \(error)")
}
````

If the current version is outdated, this might print the following.

```text
Current version (0.0.46) is unsupported.
Supported versions are: ["0.0.47", "0.0.48", "1.0"]
````

### Is my device supported?

```swift
if SighticSupportedDevices.isCurrentDeviceSupported {  
    // Use SDK
}
```
