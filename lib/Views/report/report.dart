import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';

import '../../Utils/image_in_App/images.dart';

class Report extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 50.h,
            width: 375.w,
            color: AppColors.appBarBgColor,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.iconblueColor,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Report A Problem",
                    style: TextStyle(
                        color: AppColors.textwhiteColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: Assets.poppinsRegular),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "Have you encountered any problem?",
                  style: TextStyle(
                      color: AppColors.textwhiteColor,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: Assets.poppinsRegular),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "If you come across a broken link, inaccurate information, or if you wish to report a comment by sending us a message.",
                  style: TextStyle(
                      color: AppColors.textgreyColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: Assets.poppinsRegular),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  height: 42.h,
                  width: 343.w,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                          borderSide:
                              BorderSide(color: AppColors.borderblueColor)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                          borderSide:
                              BorderSide(color: AppColors.borderblueColor)),
                      labelText: "What was the Problem?",
                      labelStyle: TextStyle(
                        fontSize: 18.sp,
                        color: AppColors.textwhiteColor,
                      ),
                    ),
                    style: TextStyle(
                        color: AppColors.textwhiteColor,
                        fontFamily: Assets.poppinsRegular,
                        fontSize: 18.sp),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  height: 50.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: AppColors.containerbgblueColor),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Send Report",
                          style: TextStyle(
                              color: AppColors.textBlackColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Icon(
                          Icons.send,
                          size: 20.sp,
                        )
                      ]),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
