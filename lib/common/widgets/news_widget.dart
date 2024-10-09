import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/utils/colors.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.author,
    required this.date,
  });

  final String title;
  final String imageUrl;
  final String author;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(22.sp),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120.h,
            width: 120.h,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: BorderRadius.circular(22.sp),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22.sp),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            // Use Expanded here
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10.sp,
                      backgroundColor: Appcolors.darkPrimaryColor,
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      // Wrap the author Text in Expanded
                      child: Text(
                        author,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Appcolors.darkFontColor,
                          fontFamily: 'interRegular',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Expanded(
                  // Wrap the title Text in Expanded
                  child: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Appcolors.darkFontColor,
                      fontFamily: 'interRegular',
                    ),
                  ),
                ),
                SizedBox(height: 5.h), // Adjusted to give some spacing
                Text(
                  date,
                  style: TextStyle(
                    color: Appcolors.darkLabelColor,
                    fontFamily: 'interRegular',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
