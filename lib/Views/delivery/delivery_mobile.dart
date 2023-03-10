import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:toobai_project_web_app/Utils/Colors/colors.dart';
import 'package:toobai_project_web_app/Utils/image_in_App/images.dart';
import 'package:toobai_project_web_app/Views/delivery/delivery_components.dart';

class DeliveryMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            children: [
              SizedBox(
                height: 32.h,
              ),
              Text(
                "Search products recommended by real people!",
                style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    color: AppColors.textwhiteColor),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Toobi AI finds recommendations from Reddit, blogs, and forums online. Tap a category and search!",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    color: AppColors.textgreyColor),
              ),
              SizedBox(
                height: 24.h,
              ),
              DeliveryComponent.CustomContainer(
                  image: Assets.animeBackground, title: 'Anime'),
              SizedBox(
                height: 24.h,
              ),
              DeliveryComponent.CustomContainer(
                  image: Assets.moviesBackground, title: 'Movies'),
              SizedBox(
                height: 24.h,
              ),
              DeliveryComponent.CustomContainer(
                  image: Assets.booksBackground, title: 'Books'),
              SizedBox(
                height: 24.h,
              ),
              DeliveryComponent.CustomContainer(
                  image: Assets.shoppingBackground, title: 'Shopping Products')
            ],
          ),
        ),
      ),
    );
  }
}
