import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:resolution_detector/resolution_detector_method_channel.dart';

void main() {
  MethodChannelResolutionDetector platform = MethodChannelResolutionDetector();
  const MethodChannel channel = MethodChannel('resolution_detector');

  TestWidgetsFlutterBinding.ensureInitialized();

  // setUp(() {
  //   channel.setMockMethodCallHandler((MethodCall methodCall) async {
  //     return '42';
  //   });
  // });

  // tearDown(() {
  //   channel.setMockMethodCallHandler(null);
  // });

  // test('getMaxResolution', () async {
  //   expect(await platform.getMaxResolution(), '42');
  // });
}
