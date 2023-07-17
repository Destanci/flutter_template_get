import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/bindings/application_bindings.dart';
import 'src/bindings/setting_binding.dart';

import 'app.dart';
import 'widgets/pages/settings/settings_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SettingBinding().dependencies();
  await Get.find<SettingsController>().loadSettings();

  ApplicationBindings().dependencies();
  runApp(Get.find<MyApp>());
}
