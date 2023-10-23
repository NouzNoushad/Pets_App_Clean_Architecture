import 'package:flutter/material.dart';
import 'package:pet_app/service_locator/service_locator.dart' as di;

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initServiceLocator();
  runApp(const MyApp());
}
