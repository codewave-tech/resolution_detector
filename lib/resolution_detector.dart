import 'resolution_detector_platform_interface.dart';

class ResolutionDetector {
  static final ResolutionDetector _resolutionDetector =
  ResolutionDetector._internal();

  factory ResolutionDetector() => _resolutionDetector;

  ResolutionDetector._internal();

  MaxSupportedResoltion? _maxSupportedResoltion;

  Future<MaxSupportedResoltion?> getMaxResolution() async {
    if (_maxSupportedResoltion != null) return _maxSupportedResoltion;
    String? resolution = await ResolutionDetectorPlatform.instance.getMaxResolution();
    _maxSupportedResoltion = resolution.resolveResolution();
    return _maxSupportedResoltion;
  }
}

enum MaxSupportedResoltion { res4K, res1080p, res720p }

extension _ResolveResolution on String? {
  MaxSupportedResoltion? resolveResolution() {
    if (this == null) return null;
    int? res = this!.split('x').map((e) => int.tryParse(e)).toList().first;
    if(res==null) return null;
    if (res >= 2160) {
      return MaxSupportedResoltion.res4K;
    } else if (res >= 1080) {
      return MaxSupportedResoltion.res1080p;
    } else {
      return MaxSupportedResoltion.res720p;
    }
  }
}
