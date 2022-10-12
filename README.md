# sightic-sdk-ios
iOS SDK by Sightic

## iOS version requirement

* iOS 15 or above

## Supported programming language

* Swift language version 5 or above - YES
* Objective-C - NO

## Supported package managers

* Swift Package - YES
* CocoaPods - NO
* Carthage - NO

## How to use SDK

1. Add SighticAnalytics as a Swift package to your app using URL https://github.com/EyescannerTechnology/sightic-sdk-ios.
1. Add the SwiftUI view `SighticView` somewhere in your app. You must let the view occupy the whole screen. The view requires:
   * An API key
   * A Completion handler of type `(SighticRecording) -> ()`
1. Show the `SighticView` view to start the test. The face of the user will be recorded during a test sequence involving some eye movements.
1. The test sequence has finished when the completion handler is called. Your app is provided with a `SighticRecording` object in the handler.
1. Call async function `performInference` belonging to the received `SighticRecording` object. The function may take a couple of seconds to finish since it involves a backend call. The result will be returned as type `SighticResult`.
1. `SighticResult` contains a boolean property named `isDrunk` indicating result of test.
