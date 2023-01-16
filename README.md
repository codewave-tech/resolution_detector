# Usage

To use the `ResolutionDetector` class, you first need to import the package:

```dart
import 'package:resolution_detector/resolution_detector.dart';
```

Then, you can create an instance of the `ResolutionDetector` class and call the `getMaxResolution` method to get the maximum supported resolution of the device:

```dart
final ResolutionDetector resolutionDetector = ResolutionDetector();

MaxSupportedResolution? maxResolution = await resolutionDetector.getMaxResolution();
```

The `getMaxResolution` method returns an instance of the `MaxSupportedResolution` enum which can be one of `res4K`, `res1080p`, `res720p`. You can use this value to determine the maximum supported resolution of the device and adjust your video playback accordingly.

It is also important to note that the `getMaxResolution` method is only called once and the result is stored in a cache for future usage, so it will not affect performance.
