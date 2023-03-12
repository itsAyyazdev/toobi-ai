import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';
import 'package:toobai_project_web_app/Views/SearchResult/search_result.dart';
import 'package:toobai_project_web_app/Views/category_page/category_components.dart';
import 'package:toobai_project_web_app/Widgets/widgets.dart';

import '../../Utils/image_in_App/images.dart';

class CategoryWeb extends StatelessWidget {
  String image;
  String title;

  CategoryWeb({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            CustomAppbar(),
            Padding(
              padding: EdgeInsets.only(top: 81.h),
              child: Container(
                height: 450.h,
                width: 1440.w,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 388.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 210.h,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        color: AppColors.textwhiteColor,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: Assets.poppinsRegular),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Search for " + title + " recommended by real users!",
                    style: TextStyle(
                        color: AppColors.textwhiteColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: Assets.poppinsRegular),
                  ),
                  SizedBox(
                    height: 48.h,
                  ),
                  Row(
                    children: [
                      CategoryComponent.CustomSearchBAr(title: "Search"),
                      SizedBox(
                        width: 16.w,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(
                              () => SearchResult(image: image, title: title));
                        },
                        child: Container(
                          height: 50.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: AppColors.containerbgblueColor),
                          child: Center(
                            child: Text(
                              "Search",
                              style: TextStyle(
                                  color: AppColors.textwhiteColor,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: Assets.poppinsRegular),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 155.h,
                  ),
                  Text(
                    "MOST POPULAR SEARCHES",
                    style: TextStyle(
                        color: AppColors.textgreyColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: Assets.poppinsRegular),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 688.w,
                    height: 400.h,
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 16.h),
                            child: Container(
                              height: 55.h,
                              width: 688.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  color: AppColors.containerBgColor),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12.h, horizontal: 12.w),
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
                          );
                        }),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 954.h),
              child: WidgetsAll.footer(context),
            )
          ],
        ),
      ),
    );
  }
}
