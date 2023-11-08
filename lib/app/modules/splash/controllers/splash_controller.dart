import 'dart:async';

import 'package:al_hadith_books/app/data/APINetwork/APIs.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

import '../../../constants/app_strings.dart';
import '../../../data/APINetwork/APIHandler.dart';
import '../../../data/hadiths_model.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  bool _isLoadingForStoreStatus = true;
  HadithsList hadithsList = HadithsList();
  @override
  void onInit() {
    loadHadithsList();
    Future.delayed(const Duration(seconds: 5), navigation);
    super.onInit();
  }

  void navigation() async {
    Get.offNamed(Routes.DASHBOARD);
  }

  void loadHadithsList() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    Completer<dynamic> completer = Completer<dynamic>();
    try {
      if (connectivityResult == ConnectivityResult.none) {
        Get.showSnackbar(
          GetSnackBar(
            title: AppStrings.noInternet,
            message: AppStrings.tryAgain,
            duration: const Duration(seconds: 3),
          ),
        );
      } else {
        var response = await APIHandler.get(
          endpoint: Apis.hadithsApi,
        );
        print('STORE_DELIVERY_STATUS response ${response}');
        if (response["status"] == 200) {
          hadithsList = HadithsList.fromJson(response);
          print(hadithsList.hadiths?.data?.length);
          completer.complete(response);
          return completer.future;
        } else {
          completer.complete(response);
          update();
        }
        _isLoadingForStoreStatus = false;
        update();
      }
    } catch (e, l) {
      print(runtimeType);
      print(e);
      print(l);
    }
  }
}
