import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';
import 'package:toobai_project_web_app/Views/delivery/delivery_components.dart';
import 'package:toobai_project_web_app/Widgets/widgets.dart';

import '../../Utils/image_in_App/images.dart';

class DeliveryWebMbileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              WidgetsAll.MobileAppBar(),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    Text(
                      "Search products recommended by real people!",
                      style: TextStyle(
                          color: AppColors.textwhiteColor,
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: Assets.poppinsRegular),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "Toobi AI finds recommendations from Reddit, blogs, and forums online. Tap a category and search!",
                      style: TextStyle(
                          color: AppColors.textgreyColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: Assets.poppinsRegular),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    DeliveryComponent.CustomContainer(
                        image: Assets.animeBackground, title: "Anime"),
                    SizedBox(
                      height: 24.h,
                    ),
                    DeliveryComponent.CustomContainer(
                        image: Assets.moviesBackground, title: "Movies"),
                    SizedBox(
                      height: 24.h,
                    ),
                    DeliveryComponent.CustomContainer(
                        image: Assets.booksBackground, title: "Books"),
                    SizedBox(
                      height: 24.h,
                    ),
                    DeliveryComponent.CustomContainer(
                        image: Assets.shoppingBackground,
                        title: "Shopping Products"),
                    SizedBox(
                      height: 48.h,
                    ),
                    Container(
                      height: 271.h,
                      width: 347.w,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 13.w, vertical: 20.h),
                        child: Center(
                          child: Image.asset(Assets.iphone),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Text(
                      "Download the Toobi AI mobile application!",
                      style: TextStyle(
                          color: AppColors.textwhiteColor,
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: Assets.poppinsRegular),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit.",
                      style: TextStyle(
                          color: AppColors.textgreyColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: Assets.poppinsRegular),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 44.h,
                          width: 148.5.w,
                          decoration: BoxDecoration(
                              color: AppColors.appBarBgColor,
                              border: Border.all(
                                  width: 1, color: AppColors.bordergreyColor),
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              children: [
                                SizedBox(
                                    height: 28.h,
                                    width: 25.w,
                                    child: Image.asset(Assets.playstoreLogo)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "GET IT ON",
                                      style: TextStyle(
                                          color: AppColors.textwhiteColor,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: Assets.poppinsRegular),
                                    ),
                                    Text(
                                      "Google PLay",
                                      style: TextStyle(
                                          color: AppColors.textwhiteColor,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: Assets.poppinsRegular),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Container(
                          height: 44.h,
                          width: 148.5.w,
                          decoration: BoxDecoration(
                              color: AppColors.appBarBgColor,
                              border: Border.all(
                                  width: 1, color: AppColors.bordergreyColor),
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              children: [
                                SizedBox(
                                    height: 28.h,
                                    width: 25.w,
                                    child: Image.asset(Assets.appleLogo)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "DOWNLOAD ON THE",
                                      style: TextStyle(
                                          color: AppColors.textwhiteColor,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: Assets.poppinsRegular),
                                    ),
                                    Text(
                                      "App Store",
                                      style: TextStyle(
                                          color: AppColors.textwhiteColor,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: Assets.poppinsRegular),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    
                  ],
                ),
              ),
              SizedBox(height: 44.h,),
              WidgetsAll.bottonBar(),
            ],
          ),
        ),
      ),
    );
  }
}
