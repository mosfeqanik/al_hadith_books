import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hadith_details_page_controller.dart';

class HadithDetailsPageView extends GetView<HadithDetailsPageController> {
  const HadithDetailsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HadithDetailsPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HadithDetailsPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
