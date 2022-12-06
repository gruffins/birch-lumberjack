# Birch

Simple, lightweight remote logging for iOS.

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

# Setup

Setup [Birch](https://github.com/gruffins/birch-ios) then add the logger to CocoaLumberjack
```swift
import BirchLumberjack

DDLog.add(DDBirchLogger())
```
