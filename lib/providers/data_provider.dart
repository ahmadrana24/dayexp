import 'dart:async';
import 'package:dayexp/providers/base_provider.dart';
import 'package:dayexp/screens/onboarding/onboarding_screen.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DataProvider extends BaseProvider {
  DataProvider() {
    myBox = Hive.box('db');
    Timer(
      const Duration(seconds: 2),
      () {
        // await getInformation();
        Get.offAll(() => const OnboardingScreen());
      },
    );
  }

  //Variables

  late Box myBox;

  // functions

  getInformation() async {}
  updateInformation() async {}
  deleteItem() {}
  updateItem() {}
  editItem() {}
  double getTotalExpenseWeekly() {
    return 1.0;
  }
}
