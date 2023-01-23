import 'resolution_detector_platform_interface.dart';

class ResolutionDetector {
  // Create a singleton instance of the ResolutionDetector
  static final ResolutionDetector _resolutionDetector =
      ResolutionDetector._internal();
  factory ResolutionDetector() => _resolutionDetector;
  ResolutionDetector._internal();

  //Cache to store the maximum supported resolution
  MaxSupportedResolution? _maxSupportedResolution;

  /// returns the maximum supported resolution for the device
  Future<MaxSupportedResolution?> getMaxResolution() async {
    //Check if the resolution is already stored in the cache
    if (_maxSupportedResolution != null) return _maxSupportedResolution;
    //Calling the platform-specific method
    String? resolution =
        await ResolutionDetectorPlatform.instance.getMaxResolution();
    //Storing the resolution in the cache
    _maxSupportedResolution = resolution.resolveResolution();
    return _maxSupportedResolution;
  }
}

//Enumeration of supported resolutions
enum MaxSupportedResolution { res4K, res1080p, res720p }

//Extension to resolve the resolution from the string
extension _ResolveResolution on String? {
  MaxSupportedResolution? resolveResolution() {
    //Checking if the resolution is null
    if (this == null) return null;
    //Splitting the string and getting the first element as int
    List<int?> _x =
        this!.split('x').map((e) => num.tryParse(e)?.toInt()).toList();
    int? res = _x.getMax;
    //Checking if the value is null
    if (res == null) return null;
    if (res >= 2160) {
      //Checking for 4K resolution
      return MaxSupportedResolution.res4K;
    } else if (res >= 1080) {
      //Checking for 1080p resolution
      return MaxSupportedResolution.res1080p;
    } else {
      //Checking for 720p resolution
      return MaxSupportedResolution.res720p;
    }
  }
}

extension _MaxResolution on List<int?> {
  int? get getMax {
    int? max = -1;
    for (int idx = 0; idx < length; idx++) {
      if (this[idx] != null && this[idx]! > max!) {
        max = this[idx];
      }
    }
    return max;
  }
}
