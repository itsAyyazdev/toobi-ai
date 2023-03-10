import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';
import 'package:toobai_project_web_app/Views/SearchResult/search_result.dart';

import 'category_components.dart';

class CategoryMobile extends StatelessWidget {
  String title;
  CategoryMobile({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryComponent.CustomAppBAr(title: title),
            Padding(
              padding:  EdgeInsets.only(left: 16.w,top: 24.h),
              child: Text(
                "MOST POPULAR SEARCHES",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: AppColors.textgreyColor),
              ),
            ),
            SizedBox(height: 16.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w),
              child: SizedBox(
                width: 343.w,
                height: 400.h,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context,index){
                    return Padding(
                      padding:  EdgeInsets.only(bottom: 16.h),
                      child: InkWell(
                        onTap: () {
                          Get.to(()=>SearchResult(image: "", title: title));
                        },
                        child: Container(
                          height: 48.h,
                          width: 343.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.containerBgColor
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                                        "Most popular search result 1",
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            color: AppColors.textwhiteColor),
                                      ),
                          ),
                        ),
                      ),
                    );
                }),
              ),
            )
          ],
        )),
      ),
    );
  }
}
