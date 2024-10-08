import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/utils/colors.dart';

class TrendingNewstile extends StatelessWidget {
  const TrendingNewstile(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.author,
      required this.date,
      required this.number});
  final String title;
  final String imageUrl;
  final String author;
  final String date;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      width: 280,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(22.sp)),
      child: Column(children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: BorderRadius.circular(22.sp)),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(22.sp),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Trending no.$number",
                style: TextStyle(
                    color: Appcolors.darkLabelColor,
                    fontFamily: 'interRegular')),
            Text(date,
                style: TextStyle(
                    color: Appcolors.darkLabelColor,
                    fontFamily: 'interRegular')),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            Flexible(
              child: Text(title,
                  maxLines: 3,
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Appcolors.darkFontColor,
                      fontFamily: 'interRegular')),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Expanded(
          child: Row(
            children: [
              CircleAvatar(
                radius: 15.sp,
                backgroundColor: Appcolors.darkPrimaryColor,
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                // Wrap Text with Expanded or Flexible
                child: Text(
                  author,
                  maxLines: 2,
                  overflow: TextOverflow
                      .ellipsis, // Optional: Adds an ellipsis if text overflows
                  style: TextStyle(
                    color: Appcolors.darkFontColor,
                    fontFamily: 'interRegular',
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        )
      ]),
    );
  }
}
