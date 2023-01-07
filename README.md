# Birch
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/BirchLumberjack.svg)](https://cocoapods.org/pods/BirchLumberjack)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)

Simple, lightweight remote logging for iOS / macOS / tvOS.

Sign up for your free account at [Birch](https://birch.ryanfung.com).

# Installation

## Using CocoaPods
```ruby
pod 'BirchLumberjack'
```

## Using Carthage
```ruby
github "gruffins/birch-lumberjack"
```

## Using Swift Package Manager
```
.package(url: "https://github.com/gruffins/birch-lumberjack.git", majorVersion: 1)
```

# Setup

Setup [Birch](https://github.com/gruffins/birch-swift) then add the logger to CocoaLumberjack
```swift
import BirchLumberjack

DDLog.add(DDBirchLogger())
```
