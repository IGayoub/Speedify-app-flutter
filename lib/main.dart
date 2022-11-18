import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:project5/theme/dark_theme.dart';
import 'package:project5/view/screens/home/speedify_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
    );
    return GetMaterialApp(
      theme: themeDark,
      debugShowCheckedModeBanner: true,
      home: const SpeedifyScreen(),
      defaultTransition: Transition.rightToLeft,
    );
  }
}
