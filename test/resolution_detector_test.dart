// import 'package:flutter_test/flutter_test.dart';
// import 'package:resolution_detector/resolution_detector.dart';
// import 'package:resolution_detector/resolution_detector_platform_interface.dart';
// import 'package:resolution_detector/resolution_detector_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockResolutionDetectorPlatform
//     with MockPlatformInterfaceMixin
//     implements ResolutionDetectorPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final ResolutionDetectorPlatform initialPlatform = ResolutionDetectorPlatform.instance;

//   test('$MethodChannelResolutionDetector is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelResolutionDetector>());
//   });

//   test('getPlatformVersion', () async {
//     ResolutionDetector resolutionDetectorPlugin = ResolutionDetector();
//     MockResolutionDetectorPlatform fakePlatform = MockResolutionDetectorPlatform();
//     ResolutionDetectorPlatform.instance = fakePlatform;

//     expect(await resolutionDetectorPlugin.getPlatformVersion(), '42');
//   });
// }
