import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';
import 'package:toobai_project_web_app/Utils/image_in_App/images.dart';
import 'package:toobai_project_web_app/Views/category_page/category.dart';
import 'package:toobai_project_web_app/Views/category_page/category_web_mbile_view.dart';

class DeliveryComponent {
  static Widget CustomContainer(
      {required String image, required String title}) {
    return GestureDetector(
        onTap: () {
          Get.to(() => CategoryWebMbileView());
        },
        child: Container(
          height: 96.h,
          width: 338.w,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.textgreyColor),
              borderRadius: BorderRadius.circular(7)),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.fill,
                height: 96.h,
                width: 338.w,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 32.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: Assets.poppinsRegular,
                          color: AppColors.textwhiteColor,
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.iconwhiteColor,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  static Widget CustomWebContainer(
      {required String image, required String title}) {
    return GestureDetector(
        onTap: () {
          Get.to(() => Categories(
                title: title,
                image: image,
              ));
        },
        child: Container(
          height: 189.h,
          width: 504.w,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.textgreyColor),
              borderRadius: BorderRadius.circular(7.r)),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.fill,
                height: 189.h,
                width: 504.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 67.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: Assets.poppinsRegular,
                          color: AppColors.textwhiteColor,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.iconwhiteColor,
                      size: 15.sp,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
