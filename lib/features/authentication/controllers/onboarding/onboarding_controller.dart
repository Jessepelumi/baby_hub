import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // update current index when page scroll
  void updatePageIndicator (index) {}

  // jump to specific selected page
  void dotNavigationClick(index) {}

  // update current index & jump to next page
  void nextPage() {}

  // update current index & jump to last page
  void skipPage () {}
}
