import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_location/utils/global.colors.dart';
import 'package:flutter_location/view/login.veiw.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () => Get.to(LoginView()));
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: const Center(
        child: Image(
          image: AssetImage('assets/images/logo.jpg'), // Corrected path
          width: 459,
          height: 312,
        ),
      ),
    );
  }
}
