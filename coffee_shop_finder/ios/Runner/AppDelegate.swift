import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey("AIzaSyBdTxh7PaNDJ_pBXCC8CR6shY6vnSJuo8g")  // Add this line!
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}