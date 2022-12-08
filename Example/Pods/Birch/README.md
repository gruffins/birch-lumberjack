# Birch

Simple, lightweight remote logging for iOS.

Sign up for your free account at [Birch](https://birch.ryanfung.com).

# Installation

## Using CocoaPods
```ruby
pod 'Birch'
pod 'BirchLumberjack' # optional. only used if you use CocoaLumberjack
```

## Using Carthage
```ruby
github 'gruffins/birch-ios' '1.0.1'
```

# Setup

In your app delegate class, initialize the logger.
```swift
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        Birch.initialize("YOUR_API_KEY")
        Birch.debug = true // this should be turned off in a production build. Debug mode allows you to see Birch operating and artifically lowers the log level and flush period.

        return true
    }
}
```
# Logging
Use the logger as you would with the default Android logger.

```swift
Birch.t("trace message) // simplest
Birch.t { "trace message" } // most performant especially if it's expensive to build the log message.

Birch.d("debug message")
Birch.d { "debug message" }

Birch.i("info message")
Birch.i { "info message" }

Birch.w("warn message")
Birch.w { "warn message" }

Birch.e("error message")
Birch.e { "error message" }
```

Block based logging is more performant since the blocks do not get executed unless the current log level includes the level of the log. See the following example:

```swift
Birch.d {
  return "hello" + someExpensiveFunction()
}
```

If the current log level is `INFO`, the log will not get constructed.

# Configuration
Device level configuration is left to the server so you can remotely control it. There are a few things you can control on the client side.

### Debugging
Debug mode will lower the log level to `TRACE` and set the upload period to every 30 seconds. You should turn this __OFF__ in a production build otherwise you will not be able to modify the log settings remotely.
```swift
Birch.debug = true
```

### Default Configuration

The default configuration is `ERROR` and log flushing every hour. This means any logs lower than `ERROR` are skipped and logs will only be delivered once an hour to preserve battery life. You can change these settings on a per source level by visiting your Birch dashboard.

# Identification
You should set an identifier so you can identify the source in the dashboard. If you do not set one, you will only be able to find devices by the assigned uuid via `Birch.uuid`.

You can also set custom properties on the source that will propagate to all drains.

```swift
func onLogin(user: User) {
  Birch.identifier = user.id
  Birch.customProperties = ["country": user.country]
}
```

# CocoaLumberjack
You can use the supplied wrapper if you want to send your logs from CocoaLumberjack to Birch.

```swift
DDLog.add(DDBirchLogger())
```