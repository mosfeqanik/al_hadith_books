import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  final SplashController splashController = Get.put(SplashController());

  SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Al Hadith Books',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
