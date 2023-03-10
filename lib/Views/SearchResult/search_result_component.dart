import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toobai_project_web_app/Utils/image_in_App/images.dart';

import '../../Utils/Colors/colors.dart';

class SearchResultCompoent{
   static Widget CustomSearchBAr({required String title}) {
    return Container(
      height: 50.h,
      width: 544.w,
      color: AppColors.appBarBgColor,
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search,size: 15,),
          prefixIconColor: AppColors.iconblueColor,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(color: AppColors.borderblueColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(color: AppColors.borderblueColor)),
          labelText: "Search",
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
    );
  }

  static Widget CustomAppBAr({required String title}) {
    bool tap=false;
    return Container(
      height: 105.h,
      width: 375.w,
      color: AppColors.appBarBgColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  title,
                  style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: AppColors.textwhiteColor),
                ),
                              Spacer(),
                Icon(Icons.add,color: AppColors.iconblueColor,size: 20.sp,)
              ],
            ),
            SizedBox(height: 10.h,),
            Container(
              height: 42.h,
              width: 345.w,
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.cancel_outlined),
                  suffixIconColor: AppColors.iconblueColor,
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: AppColors.iconblueColor,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: AppColors.borderblueColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: AppColors.borderblueColor)),
                  labelText: "Search",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: AppColors.textwhiteColor,
                  ),
                ),
                style: TextStyle(
                    color: AppColors.textwhiteColor,
                    fontFamily: 'Montserrat',
                    fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}