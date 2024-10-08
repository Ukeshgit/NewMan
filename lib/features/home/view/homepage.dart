import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/common/widgets/newstile.dart';
import 'package:news_app/features/home/controller/trending_news_controller.dart';
import 'package:news_app/utils/controller/theme_controller.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController controller = Get.put(ThemeController());
    TrendingNewsController trendingNewsController =
        Get.put(TrendingNewsController());

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.error,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title:
            Text('NewsMan', style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hottest News",
                    style: Theme.of(context).textTheme.headlineMedium),
                Text("See More", style: Theme.of(context).textTheme.labelSmall),
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
                        imageUrl: trendingNewsController.articleListData[index]
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
            })
          ],
        ),
      ),
    );
  }
}
