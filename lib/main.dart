import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:naturemedix_admin/helpers/_init.dart';
import 'package:naturemedix_admin/views/landing.dart';

import 'routes/_pages.dart';
import 'views/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDependencies(),
      initialRoute: SystemPage.getLadingPage,
      getPages: SystemPage.routes,
      home: const LandingPage(),
    );
  }
}
