

import 'package:flutter_application_1/app/ActivityWall/controllers/Activitywall_controller.dart';
import 'package:get/get.dart';

class ActivitywallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ActivityWallController>(
      () => ActivityWallController(),
    );
  }
}