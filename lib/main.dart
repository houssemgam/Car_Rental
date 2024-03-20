import 'package:flutter/material.dart';
import 'package:flutter_location/view/splash.view.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
