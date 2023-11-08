import 'package:get/get.dart';

import '../controllers/hadith_details_page_controller.dart';

class HadithDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HadithDetailsPageController>(
      () => HadithDetailsPageController(),
    );
  }
}
