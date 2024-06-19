import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paalii/features/authentication/screens/login/login.dart';
import 'package:paalii/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // variables
  final deviceStorage = GetStorage();

  // called from the main file
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // function to show releant screen
  screenRedirect() async {
    // local storage
    deviceStorage.writeIfNull("isFirstTime", true);
    deviceStorage.read("isFirstTime") != true
        ? Get.offAll(() => LoginScreen())
        : Get.offAll(() => OnBoardingScreen());
  }
}
