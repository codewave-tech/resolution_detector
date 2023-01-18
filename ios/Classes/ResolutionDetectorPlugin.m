#import "ResolutionDetectorPlugin.h"
#if __has_include(<resolution_detector/resolution_detector-Swift.h>)
#import <resolution_detector/resolution_detector-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "resolution_detector-Swift.h"
#endif

@implementation ResolutionDetectorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftResolutionDetectorPlugin registerWithRegistrar:registrar];
}
@end
