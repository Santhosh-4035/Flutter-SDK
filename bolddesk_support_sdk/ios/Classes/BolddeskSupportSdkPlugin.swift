import Flutter
import UIKit
import BolddeskSupportSDK

public class BolddeskSupportSdkPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "bolddesk_support_sdk", binaryMessenger: registrar.messenger())
    let instance = BolddeskSupportSdkPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "showHome":
      BolddeskSDK.showHome()
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
