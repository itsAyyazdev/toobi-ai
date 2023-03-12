import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';
import 'package:toobai_project_web_app/Views/delivery/delivery_components.dart';
import 'package:toobai_project_web_app/Widgets/widgets.dart';

import '../../Utils/image_in_App/images.dart';

class DeliveryWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            CustomAppbar(),
            Padding(
              padding: EdgeInsets.only(top: 82.h),
              child: Container(
                height: 350.h,
                width: 1440.w,
                color: AppColors.appBarBgColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 200.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 194.h,
                  ),
                  Text(
                    "Search products recommended by real people!",
                    style: TextStyle(
                        color: AppColors.textwhiteColor,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: Assets.poppinsRegular),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: 776.w,
                    child: Text(
                      "Search in the categories and find products recommended by users on\nReddit, blogs, and forums curated by Toobi AI!",
                      style: TextStyle(
                          color: AppColors.textwhiteColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: Assets.poppinsRegular),
                    ),
                  ),
                  SizedBox(
                    height: 75.h,
                  ),
                  Row(
                    children: [
                      DeliveryComponent.CustomWebContainer(
                          image: Assets.animeBackground, title: 'Anime'),
                      Spacer(),
                      DeliveryComponent.CustomWebContainer(
                          image: Assets.moviesBackground, title: 'Movies'),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    children: [
                      DeliveryComponent.CustomWebContainer(
                          image: Assets.booksBackground, title: 'Books'),
                      Spacer(),
                      DeliveryComponent.CustomWebContainer(
                          image: Assets.shoppingBackground,
                          title: 'Shopping Products'),
                    ],
                  ),
                  SizedBox(
                    height: 96.h,
                  ),
                 WidgetsAll.downloadContainer()
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 1464.h),
              child: WidgetsAll.footer(),
            )
          ],
        ),
      ),
    );
  }
}
