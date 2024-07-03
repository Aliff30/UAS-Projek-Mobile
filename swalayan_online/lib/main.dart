import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swalayan_online/view/splash.view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
