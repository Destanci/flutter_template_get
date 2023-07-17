//// import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../src/utils/localization.dart';
import 'settings_controller.dart';
import '../../views/theme_mode_selector.dart';

class SettingsPage extends GetView<SettingsController> {
  static const routeName = '/settings';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Localization.of(context).settingsPageTitle),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: ThemeModeSelector()),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: DropdownMenu(
                initialSelection: controller.locale.languageCode,
                dropdownMenuEntries: [
                  for (var locale in Localization.supportedLocales)
                    DropdownMenuEntry(
                      value: locale.languageCode,
                      label: Localization.getNativeNameOf(locale),
                    ),
                ],
                onSelected: (value) {
                  controller.updateLocale(value != null ? Locale(value) : null);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
