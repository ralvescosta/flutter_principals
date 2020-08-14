import 'package:architecture_week/app/app_controller.dart';
import 'package:flutter/material.dart';

class CustomSwitchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDark,
      onChanged: (value) {
        print(AppController.instance.isDark);
        AppController.instance.viewModel.changeTheme(value);
      },
    );
  }
}