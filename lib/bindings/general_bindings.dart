import 'package:get/get.dart';
import 'package:paalii/utils/http/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
