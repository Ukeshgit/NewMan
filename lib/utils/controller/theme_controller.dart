import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/utils/theme.dart';

class ThemeController extends GetxController {
  RxBool darktheme = false.obs;

  void changeTheme() {
    darktheme.value = !darktheme.value;
    Get.changeThemeMode(darktheme.value ? ThemeMode.dark : ThemeMode.light);
  }
}
