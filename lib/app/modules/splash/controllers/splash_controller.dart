import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 5), navigation);
    super.onInit();
  }

  void navigation() async {
    Get.offNamed(Routes.DASHBOARD);
  }
}
