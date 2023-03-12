import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';
import 'package:toobai_project_web_app/Views/SearchResult/search_result_web%20mobile.dart';
import 'package:toobai_project_web_app/Widgets/widgets.dart';

import '../../Utils/image_in_App/images.dart';

class CategoryWebMbileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Image.asset(
                Assets.moviesBackground,
                height: 350.h,
                width: 375.w,
                fit: BoxFit.fill,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WidgetsAll.MobileAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 53.h,
                        ),
                        Text(
                          "Movie",
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
                          "Search for Movie recommended by real users!",
                          style: TextStyle(
                              color: AppColors.textwhiteColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        Container(
                          height: 50.h,
                          width: 345.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.containerBgColor,
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                size: 15,
                              ),
                              prefixIconColor: AppColors.iconblueColor,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                      color: AppColors.borderblueColor)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                      color: AppColors.borderblueColor)),
                              labelText: "Search",
                              labelStyle: TextStyle(
                                fontSize: 14,
                                color: AppColors.textwhiteColor,
                              ),
                            ),
                            style: TextStyle(
                                color: AppColors.textwhiteColor,
                                fontFamily: Assets.poppinsRegular,
                                fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        InkWell(
                          onTap: () {
                             Get.to(()=>SearchResultWebMbile());
                          },
                          child: Container(
                            height: 50.h,
                            width: 347.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: AppColors.containerbgblueColor),
                            child: Center(
                              child: Text(
                                "Search",
                                style: TextStyle(
                                    color: AppColors.textBlackColor,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: Assets.poppinsRegular),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 77.h,
                        ),
                        Text(
                          "MOST POPULAR SEARCHES",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              color: AppColors.textgreyColor),
                        ),
                          SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                width: 343.w,
                height: 300.h,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context,index){
                    return Padding(
                      padding:  EdgeInsets.only(bottom: 16.h),
                      child: InkWell(
                        onTap: () {
                          // Get.to(()=>SearchResult(image: "", title: title));
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
                SizedBox(
                          height: 64.h,
                        ),
                      ],
                    ),
                  ),
                  WidgetsAll.bottonBar()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
