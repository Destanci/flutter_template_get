import 'package:get/get.dart';

import '../../business/abstract/settings_service.dart';
import '../../business/concrete/settings_manager.dart';
import '../../data_access/abstract/settings_dal.dart';
import '../../data_access/concrete/sh_settings_dal.dart';
import '../../widgets/pages/settings/settings_controller.dart';

class SettingBinding with Bindings {
  @override
  void dependencies() {
    Get.put<ISettingsDal>(
      ShSettingsDal(),
      permanent: true,
    );

    Get.put<ISettingsService>(
      SettingsManager(
        Get.find(),
        getDeviceLocale: () => Get.deviceLocale,
      ),
      permanent: true,
    );

    Get.put(
      SettingsController(Get.find()),
    );
  }
}
