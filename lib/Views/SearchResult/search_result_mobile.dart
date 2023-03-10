import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';
import 'package:toobai_project_web_app/Views/SearchResult/search_result_component.dart';
import 'package:toobai_project_web_app/Views/productDeatils/productDetails.dart';

import '../../Utils/image_in_App/images.dart';

class SearchResultMobile extends StatelessWidget {
  String title;
  SearchResultMobile({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchResultCompoent.CustomAppBAr(title: title + " Results"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                child: Text(
                  "24 SEARCH RESULTS",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: AppColors.textgreyColor),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: SizedBox(
                      height: 616.h,
                      width: 341.w,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:  EdgeInsets.only(bottom: 16.h),
                            child: InkWell(
                              onTap: () {
                                Get.to(()=>ProductDetails(image:Assets.product, pNAme: "Item Name", title: title));
                              },
                              child: Container(
                                height: 180.h,
                                width: 341.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    color: AppColors.containerBgColor),
                                child: Padding(
                                  padding: EdgeInsets.all(12.w),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 156.h,
                                        width: 100.w,
                                        child: Image.asset(
                                          Assets.product,
                                          fit: BoxFit.fill,
                                          height: 156.h,
                                          width: 100.w,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 24.w,
                                      ),
                                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                width: 131.w,
                                                child: Text(
                                                  "Item Name",
                                                  style: TextStyle(
                                                      color: AppColors.textwhiteColor,
                                                      fontSize: 16.sp,
                                                      fontWeight: FontWeight.w600,
                                                      fontFamily:
                                                          Assets.poppinsRegular),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 24.w,
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                color: AppColors.iconblueColor,
                                                size: 20.sp,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          SizedBox(
                                            height: 96.h,
                                            width: 193.w,
                                            child: Text(
                                              "Nullam quis risus eget urna mollis ornare vel eu leo. Lorem ipsum dolor sit... more",
                                              style: TextStyle(
                                                  color: AppColors.textgreyColor,
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: Assets.poppinsRegular),
                                            ),
                                          ),
                                           Row(
                                      children: [
                                        Image.asset(
                                          Assets.imdb,
                                          height: 20.h,
                                          width: 40.w,
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text(
                                          "6.4/10",
                                          style: TextStyle(
                                              color: AppColors.textwhiteColor,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: Assets.poppinsRegular),
                                        ),
                                        SizedBox(
                                          width: 16.w,
                                        ),
                                        Image.asset(
                                          Assets.fruit,
                                          height: 20.h,
                                          width: 20.w,
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text(
                                          "75%",
                                          style: TextStyle(
                                              color: AppColors.textwhiteColor,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: Assets.poppinsRegular),
                                        ),
                                      ],
                                    ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
