import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'resolution_detector_method_channel.dart';

abstract class ResolutionDetectorPlatform extends PlatformInterface {
  /// Constructs a ResolutionDetectorPlatform.
  ResolutionDetectorPlatform() : super(token: _token);

  static final Object _token = Object();

  static ResolutionDetectorPlatform _instance =
      MethodChannelResolutionDetector();

  /// The default instance of [ResolutionDetectorPlatform] to use.
  ///
  /// Defaults to [MethodChannelResolutionDetector].
  static ResolutionDetectorPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ResolutionDetectorPlatform] when
  /// they register themselves.
  static set instance(ResolutionDetectorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getMaxResolution() {
    throw UnimplementedError('getMaxResolution() has not been implemented.');
  }
}
