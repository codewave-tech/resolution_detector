import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'resolution_detector_platform_interface.dart';

/// An implementation of [ResolutionDetectorPlatform] that uses method channels.
class MethodChannelResolutionDetector extends ResolutionDetectorPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('resolution_detector');

  @override
  Future<String?> getMaxResolution() async {
    final maxResolution =
        await methodChannel.invokeMethod<String>('getMaxResolution');
    return maxResolution;
  }
}
