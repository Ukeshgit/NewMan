import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:news_app/main.dart';
import 'package:news_app/utils/colors.dart';
import 'package:news_app/utils/controller/theme_controller.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController controller = Get.put(ThemeController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Appcolors.darkBgColor,
          leading: Obx(() {
            return InkWell(
                onTap: () {
                  controller.changeTheme();
                },
                child: controller.darktheme.value
                    ? const Icon(
                        Icons.dark_mode,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.light_mode,
                        color: Colors.white,
                      ));
          }),
          title:
              Text('NewsMan', style: Theme.of(context).textTheme.headlineLarge),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Hottest News",
                          style: Theme.of(context).textTheme.headlineMedium),
                    ],
                  )
                ],
              )),
        ));
  }
}
