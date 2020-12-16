import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  FlutterDriver driver;
  setUpAll(() async {
    driver = await FlutterDriver.connect();
  });
  test('Check health', () async {
    var health = await driver.checkHealth();
    expect(health.status, HealthStatus.ok);
  });
  group('MainPage', () {
    test('Loading', () async {
      await Future.delayed(Duration(seconds: 3));
    });
    test('Working', () async {
      await Future.delayed(Duration(seconds: 3));
    });
  });
  tearDownAll(() async {
    if (driver != null) {
      await driver.close();
    }
  });
}
