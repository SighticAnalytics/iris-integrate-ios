# IRIS integrate iOS Framework

The IRIS integrate iOS framework predicts if a person may be impaired due to substance use.

## Documentation

Documentation is [available here](https://sighticanalytics.github.io/iris-integrate-ios/documentation/irisintegrate/).

## Adding IRIS integrate as a Dependency

### Xcode Project
To use IRIS integrate in an Xcode project, follow [this guide](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app) in the Xcode documentation.

- Enter `https://github.com/SighticAnalytics/iris-integrate-ios` as Package URL.
- As Dependency Rule, we recommend using "Up to Next Major Version" with the value `3.0.0`.

### SwiftPM Project
To use IRIS integrate in a Swift Package Manager project, add the following line to the dependencies in your `Package.swift` file:

```swift
.package(url: "https://github.com/SighticAnalytics/iris-integrate-ios", from: "3.0.0"),
```

And include `IRISintegrate` as a dependency for your executable target:

```swift
.target(
    name: "<target>", 
    dependencies: [
        .product(name: "IRISintegrate", package: "iris-integrate-ios"),
    ]
),
```

## Quickstart App

There is a [Quickstart App](https://github.com/SighticAnalytics/iris-integrate-quickstart-app-ios) sample project available that shows how to integrate the framework in an iOS app.

## Support

Please get in touch with [Sightic Analytics](https://www.sighticanalytics.com/contact) for support.

## Privacy Policy

Refer to our [privacy policy document](https://www.sightic.com/privacy-policy) for more information.

## License

The IRIS integrate iOS framework is commercial software.
