import Flutter
import UIKit
import Foundation
import AVFoundation

public class SwiftResolutionDetectorPlugin: NSObject, FlutterPlugin {

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "resolution_detector", binaryMessenger: registrar.messenger())
        let instance = SwiftResolutionDetectorPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if (call.method == "getMaxResolution") {
            // let session = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInWideAngleCamera], mediaType: AVMediaType.video, position: .unspecified)
            // let devices = session.devices
            // var maxResolution = CGSize.zero
            // for device in devices {
            //     for format in device.formats {
            //         let dimensions = CMVideoFormatDescriptionGetDimensions(format.formatDescription)
            //         let resolution = CGSize(width: CGFloat(dimensions.width), height: CGFloat(dimensions.height))
            //         if resolution.width > maxResolution.width || resolution.height > maxResolution.height {
            //             maxResolution = resolution
            //         }
            //     }
            // }
            let maxResolution = UIScreen.main.nativeBounds.size
            result("\(maxResolution.width)x\(maxResolution.height)")
           
        } else {
            result(FlutterMethodNotImplemented)
        }
    }
}
