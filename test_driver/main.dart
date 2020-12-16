import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_driver_app/main.dart' as app;

Future<void> main() async {
  enableFlutterDriverExtension();

  app.main();
}
