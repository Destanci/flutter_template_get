import 'package:get/get.dart';

import '../../app.dart';
import '../../widgets/pages/sample_details/sample_details_controller.dart';
import '../../widgets/pages/sample_list/sample_list_controller.dart';

class ApplicationBindings with Bindings {
  @override
  void dependencies() {
    // * Widget Bindings

    Get.lazyPut(() => const MyApp());

    // * Controller Bindings

    Get.lazyPut(() => SampleListController(), fenix: true);
    Get.lazyPut(() => SampleDetailController(), fenix: true);
  }
}
