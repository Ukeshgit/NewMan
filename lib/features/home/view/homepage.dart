import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/common/widgets/news_widget.dart';
import 'package:news_app/common/widgets/newstile.dart';
import 'package:news_app/features/home/controller/bottom_navigation_controller.dart';
import 'package:news_app/features/home/controller/news_for_you_controller.dart';
import 'package:news_app/features/home/controller/trending_news_controller.dart';
import 'package:news_app/utils/colors.dart';
import 'package:news_app/utils/controller/theme_controller.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavigationController bottomNavigationController =
        Get.put(BottomNavigationController());
    ThemeController controller = Get.put(ThemeController());
    TrendingNewsController trendingNewsController =
        Get.put(TrendingNewsController());
    NewsForYouController newscontroller = Get.put(NewsForYouController());
    ;

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99.sp),
                color: Theme.of(context).colorScheme.primary),
            width: 180.w,
            height: 60.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(() {
                  return GestureDetector(
                    onTap: () {
                      bottomNavigationController.index.value = 0;
                    },
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: bottomNavigationController.index.value == 0
                              ? Appcolors.darkPrimaryColor
                              : null,
                          borderRadius: BorderRadius.circular(100.sp)),
                      child: Icon(
                        Icons.home,
                        color: bottomNavigationController.index.value == 0
                            ? Appcolors.darkLabelColor
                            : null,
                      ),
                    ),
                  );
                }),
                Obx(() {
                  return GestureDetector(
                    onTap: () {
                      bottomNavigationController.index.value = 1;
                    },
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: bottomNavigationController.index.value == 1
                              ? Appcolors.darkPrimaryColor
                              : null,
                          borderRadius: BorderRadius.circular(100.sp)),
                      child: Icon(
                        Icons.book,
                        color: bottomNavigationController.index.value == 1
                            ? Appcolors.darkLabelColor
                            : null,
                      ),
                    ),
                  );
                }),
                Obx(() {
                  return GestureDetector(
                    onTap: () {
                      bottomNavigationController.index.value = 2;
                    },
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: bottomNavigationController.index.value == 2
                              ? Appcolors.darkPrimaryColor
                              : null,
                          borderRadius: BorderRadius.circular(100.sp)),
                      child: Icon(
                        Icons.settings,
                        color: bottomNavigationController.index.value == 2
                            ? Appcolors.darkLabelColor
                            : null,
                      ),
                    ),
                  );
                }),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.error,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title:
            Text('NewsMan', style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hottest News",
                      style: Theme.of(context).textTheme.headlineMedium),
                  Text("See More",
                      style: TextStyle(
                          fontSize: 14.sp, color: Appcolors.darkLabelColor)),
                ],
              ),
              SizedBox(height: 20.h),
              Obx(() {
                return SizedBox(
                  height: 390,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal, // Horizontal scrolling
                    itemBuilder: (context, index) {
                      // Get the current article

                      return TrendingNewstile(
                          number: index + 1,
                          date: trendingNewsController
                              .articleListData[index].publishedAt!,
                          title: trendingNewsController.articleListData[index]
                              .title!, // Assuming 'title' is a field in your article model
                          imageUrl: trendingNewsController
                              .articleListData[index]
                              .urlToImage!, // Assuming 'imageUrl' is a field in your article model
                          author: trendingNewsController
                                  .articleListData[index].author! ??
                              "Unknown");
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 10.w);
                    },
                    itemCount: trendingNewsController
                        .articleListData.length, // Number of items in the list
                  ),
                );
              }),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("News for you",
                      style: Theme.of(context).textTheme.headlineMedium),
                  Text("See More",
                      style: TextStyle(
                          fontSize: 14.sp, color: Appcolors.darkLabelColor)),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: newscontroller.newsdetails.length,
                itemBuilder: (context, index) {
                  return NewsWidget(
                    title: newscontroller.newsdetails[index].title ?? "Unknown",
                    date: newscontroller.newsdetails[index].publishedAt ??
                        "Unknown",
                    author:
                        newscontroller.newsdetails[index].author ?? "Unknown",
                    imageUrl: newscontroller.newsdetails[index].urlToImage ??
                        "https://www.reuters.com/resizer/v2/RZKFNIHPORMWVHKDBTJPUIHVHQ.jpg?auth=80ac7c9e54f528201dabfb2caa0fee533e4ea7f76223b18d7170f0bc9022b681&width=1920&quality=80",
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
