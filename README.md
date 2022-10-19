# Sightic Analytics iOS SDK

The Sightic Analytics iOS SDK detects the influence of drugs and alcohol trhough image analysis of the eye area. The SDK makes it possible to integrate this functionality in any iOS app.

## Requirements

* Platforms
  * iOS 15
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

1. Add SighticAnalytics as a Swift package to your app using URL https://github.com/EyescannerTechnology/sightic-sdk-ios.
1. Add the SwiftUI view `SighticView` somewhere in your app. You must let the view occupy the whole screen. The view requires:
   * An API key
   * A Completion handler of type `(SighticRecording) -> ()`
1. Show the `SighticView` view to start the test. The face of the user will be recorded during a test sequence involving some eye movements.
1. The test sequence has finished when the completion handler is called. Your app is provided with a `SighticRecording` object in the handler.
1. Call async function `performInference` belonging to the received `SighticRecording` object. The function may take a couple of seconds to finish since it involves a backend call. The result will be returned as type `SighticResult`.
1. `SighticResult` contains a boolean property named `hasImpairment` indicating result of test.