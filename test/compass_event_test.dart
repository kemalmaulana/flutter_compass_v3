import 'package:flutter_compass_v3/flutter_compass_v3.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CompassEvent.fromList', () {
    test('maps heading, headingForCameraMode and accuracy', () {
      final event = CompassEvent.fromList([90.0, 45.0, 5.0]);

      expect(event.heading, 90.0);
      expect(event.headingForCameraMode, 45.0);
      expect(event.accuracy, 5.0);
    });

    test('treats accuracy of -1 as unavailable', () {
      final event = CompassEvent.fromList([90.0, 45.0, -1.0]);

      expect(event.accuracy, isNull);
    });

    test('treats null data as no sensor available', () {
      final event = CompassEvent.fromList(null);

      expect(event.heading, isNull);
      expect(event.headingForCameraMode, isNull);
      expect(event.accuracy, isNull);
    });

    test('toString includes all fields', () {
      final event = CompassEvent.fromList([90.0, 45.0, 5.0]);

      expect(event.toString(), contains('heading: 90.0'));
      expect(event.toString(), contains('headingForCameraMode: 45.0'));
      expect(event.toString(), contains('accuracy: 5.0'));
    });
  });
}
