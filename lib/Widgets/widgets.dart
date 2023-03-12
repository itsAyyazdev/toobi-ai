import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toobai_project_web_app/Views/category_page/category.dart';
import 'package:toobai_project_web_app/Views/delivery/delivery.dart';
import 'package:toobai_project_web_app/Views/download/DownloadWeb.dart';
import 'package:toobai_project_web_app/responsive.dart';

import '../Utils/Colors/colors.dart';
import '../Utils/image_in_App/images.dart';

class WidgetsAll {
  static Widget footer(BuildContext context) {
    return Container(
        // height: 389.h,
        width: 1440.w,
        color: AppColors.appBarBgColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 200.w),
          child: Responsive.isMobile(context)
              ? Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 64.h,
                        ),
                        RichText(
                            text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "Toobi",
                            style: TextStyle(
                                color: AppColors.textwhiteColor,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: Assets.poppinsRegular),
                          ),
                          TextSpan(
                            text: "AI",
                            style: TextStyle(
                                color: AppColors.textblueColor,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: Assets.poppinsRegular),
                          )
                        ])),
                        SizedBox(
                          height: 24.h,
                        ),
                        Text(
                          "HELLO@TOOBI.AI",
                          style: TextStyle(
                              color: AppColors.textwhiteColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 44.h,
                              width: 44.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.borderblueColor),
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              child: Center(
                                child: Image.asset(
                                  Assets.facebook,
                                  height: 23.h,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Container(
                              height: 44.h,
                              width: 44.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.borderblueColor),
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              child: Center(
                                child: Image.asset(
                                  Assets.twitter,
                                  height: 23.h,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Container(
                              height: 44.h,
                              width: 44.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.borderblueColor),
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              child: Center(
                                child: Image.asset(
                                  Assets.insta,
                                  height: 23.h,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Text(
                          "DOWNLOAD THE MOBILE APP",
                          style: TextStyle(
                              color: AppColors.textgreyColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                          width: 350.w,
                          child: Row(
                            children: [
                              Container(
                                height: 61.h,
                                width: 148.5.w,
                                decoration: BoxDecoration(
                                    color: AppColors.appBarBgColor,
                                    border: Border.all(
                                        width: 1,
                                        color: AppColors.bordergreyColor),
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          height: 28.h,
                                          width: 25.w,
                                          child: Image.asset(
                                              Assets.playstoreLogo)),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                fontFamily:
                                                    Assets.poppinsRegular),
                                          ),
                                          Text(
                                            "Google PLay",
                                            style: TextStyle(
                                                color: AppColors.textwhiteColor,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                fontFamily:
                                                    Assets.poppinsRegular),
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
                                height: 61.h,
                                width: 148.5.w,
                                decoration: BoxDecoration(
                                    color: AppColors.appBarBgColor,
                                    border: Border.all(
                                        width: 1,
                                        color: AppColors.bordergreyColor),
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          height: 28.h,
                                          width: 25.w,
                                          child: Image.asset(Assets.appleLogo)),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                fontFamily:
                                                    Assets.poppinsRegular),
                                          ),
                                          Text(
                                            "App Store",
                                            style: TextStyle(
                                                color: AppColors.textwhiteColor,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                fontFamily:
                                                    Assets.poppinsRegular),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 85.h,
                        ),
                        Text(
                          "Pages",
                          style: TextStyle(
                              color: AppColors.textgreyColor,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "ANIMES",
                          style: TextStyle(
                              color: AppColors.textwhiteColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "MOVIES",
                          style: TextStyle(
                              color: AppColors.textwhiteColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "BOOKS",
                          style: TextStyle(
                              color: AppColors.textwhiteColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "SHOPPING PRODUCTS",
                          style: TextStyle(
                              color: AppColors.textwhiteColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                      ],
                    )
                  ],
                )
              : Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 64.h,
                        ),
                        RichText(
                            text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "Toobi",
                            style: TextStyle(
                                color: AppColors.textwhiteColor,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: Assets.poppinsRegular),
                          ),
                          TextSpan(
                            text: "AI",
                            style: TextStyle(
                                color: AppColors.textblueColor,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: Assets.poppinsRegular),
                          )
                        ])),
                        SizedBox(
                          height: 24.h,
                        ),
                        Text(
                          "HELLO@TOOBI.AI",
                          style: TextStyle(
                              color: AppColors.textwhiteColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 44.h,
                              width: 44.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.borderblueColor),
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              child: Center(
                                child: Image.asset(
                                  Assets.facebook,
                                  height: 23.h,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Container(
                              height: 44.h,
                              width: 44.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.borderblueColor),
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              child: Center(
                                child: Image.asset(
                                  Assets.twitter,
                                  height: 23.h,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Container(
                              height: 44.h,
                              width: 44.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.borderblueColor),
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              child: Center(
                                child: Image.asset(
                                  Assets.insta,
                                  height: 23.h,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Text(
                          "DOWNLOAD THE MOBILE APP",
                          style: TextStyle(
                              color: AppColors.textgreyColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                          width: 350.w,
                          child: Row(
                            children: [
                              Container(
                                height: 61.h,
                                width: 148.5.w,
                                decoration: BoxDecoration(
                                    color: AppColors.appBarBgColor,
                                    border: Border.all(
                                        width: 1,
                                        color: AppColors.bordergreyColor),
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          height: 28.h,
                                          width: 25.w,
                                          child: Image.asset(
                                              Assets.playstoreLogo)),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                fontFamily:
                                                    Assets.poppinsRegular),
                                          ),
                                          Text(
                                            "Google PLay",
                                            style: TextStyle(
                                                color: AppColors.textwhiteColor,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                fontFamily:
                                                    Assets.poppinsRegular),
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
                                height: 61.h,
                                width: 148.5.w,
                                decoration: BoxDecoration(
                                    color: AppColors.appBarBgColor,
                                    border: Border.all(
                                        width: 1,
                                        color: AppColors.bordergreyColor),
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          height: 28.h,
                                          width: 25.w,
                                          child: Image.asset(Assets.appleLogo)),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                fontFamily:
                                                    Assets.poppinsRegular),
                                          ),
                                          Text(
                                            "App Store",
                                            style: TextStyle(
                                                color: AppColors.textwhiteColor,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                fontFamily:
                                                    Assets.poppinsRegular),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        SizedBox(
                          height: 85.h,
                        ),
                        Text(
                          "Pages",
                          style: TextStyle(
                              color: AppColors.textgreyColor,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "ANIMES",
                          style: TextStyle(
                              color: AppColors.textwhiteColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "MOVIES",
                          style: TextStyle(
                              color: AppColors.textwhiteColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "BOOKS",
                          style: TextStyle(
                              color: AppColors.textwhiteColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "SHOPPING PRODUCTS",
                          style: TextStyle(
                              color: AppColors.textwhiteColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: Assets.poppinsRegular),
                        ),
                      ],
                    )
                  ],
                ),
        ));
  }

  static Widget downloadContainer() {
    return Container(
      height: 400.h,
      width: 1040.w,
      decoration: BoxDecoration(
          border: Border.all(width: 1.w, color: AppColors.bordergreyColor)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 89.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 118.h,
                ),
                Text(
                  "Download the Toobi AI mobile application!",
                  style: TextStyle(
                      color: AppColors.textwhiteColor,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: Assets.poppinsRegular),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  height: 55.h,
                  width: 528.w,
                  child: Text(
                    "Maecenas sed diam eget risus varius blandit sit amet non magna.\nNullam id dolor id nibh ultricies vehicula ut id elit.",
                    style: TextStyle(
                        color: AppColors.textgreyColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: Assets.poppinsRegular),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                SizedBox(
                  width: 350.w,
                  child: Row(
                    children: [
                      Container(
                        height: 61.h,
                        width: 148.5.w,
                        decoration: BoxDecoration(
                            color: AppColors.appBarBgColor,
                            border: Border.all(
                                width: 1, color: AppColors.bordergreyColor),
                            borderRadius: BorderRadius.circular(15.r)),
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
                        height: 61.h,
                        width: 148.5.w,
                        decoration: BoxDecoration(
                            color: AppColors.appBarBgColor,
                            border: Border.all(
                                width: 1, color: AppColors.bordergreyColor),
                            borderRadius: BorderRadius.circular(15.r)),
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
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 47.h,
            ),
            child: Image.asset(
              Assets.delivery,
              height: 353.h,
              width: 245.w,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }

  static Widget MobileAppBar() {
    return Container(
      height: 64.h,
      width: 375.w,
      color: AppColors.appBarBgColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: [
            RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: "Toobi",
                style: TextStyle(
                    color: AppColors.textwhiteColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: Assets.poppinsRegular),
              ),
              TextSpan(
                text: "AI",
                style: TextStyle(
                    color: AppColors.textblueColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: Assets.poppinsRegular),
              )
            ])),
            Spacer(),
            Icon(
              Icons.menu,
              color: AppColors.iconblueColor,
              size: 30.sp,
            )
          ],
        ),
      ),
    );
  }

  static Widget bottonBar() {
    return Container(
        height: 605.h,
        width: 375.w,
        color: AppColors.appBarBgColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 64.h,
            ),
            Text(
              "Pages",
              style: TextStyle(
                  color: AppColors.textgreyColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.poppinsRegular),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "ANIMES",
              style: TextStyle(
                  color: AppColors.textwhiteColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.poppinsRegular),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "MOVIES",
              style: TextStyle(
                  color: AppColors.textwhiteColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.poppinsRegular),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "BOOKS",
              style: TextStyle(
                  color: AppColors.textwhiteColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.poppinsRegular),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "SHOPPING PRODUCTS",
              style: TextStyle(
                  color: AppColors.textwhiteColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.poppinsRegular),
            ),
            SizedBox(
              height: 48.h,
            ),
            RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: "Toobi",
                style: TextStyle(
                    color: AppColors.textwhiteColor,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: Assets.poppinsRegular),
              ),
              TextSpan(
                text: "AI",
                style: TextStyle(
                    color: AppColors.textblueColor,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: Assets.poppinsRegular),
              )
            ])),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "HELLO@TOOBI.AI",
              style: TextStyle(
                  color: AppColors.textwhiteColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.poppinsRegular),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Container(
                  height: 44.h,
                  width: 44.h,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1, color: AppColors.borderblueColor),
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Center(
                    child: Image.asset(
                      Assets.facebook,
                      height: 23.h,
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Container(
                  height: 44.h,
                  width: 44.h,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1, color: AppColors.borderblueColor),
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Center(
                    child: Image.asset(
                      Assets.twitter,
                      height: 23.h,
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Container(
                  height: 44.h,
                  width: 44.h,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1, color: AppColors.borderblueColor),
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Center(
                    child: Image.asset(
                      Assets.insta,
                      height: 23.h,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "DOWNLOAD THE MOBILE APP",
              style: TextStyle(
                  color: AppColors.textgreyColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.poppinsRegular),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
                width: 350.w,
                child: Row(children: [
                  Container(
                    height: 44.h,
                    width: 148.5.w,
                    decoration: BoxDecoration(
                        color: AppColors.appBarBgColor,
                        border: Border.all(
                            width: 1, color: AppColors.bordergreyColor),
                        borderRadius: BorderRadius.circular(15.r)),
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
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(children: [
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
                          ),
                        ]),
                      ))
                ])),
            SizedBox(
              height: 64.h,
            ),
          ]),
        ));
  }
}

class CustomAppbar extends StatefulWidget {
  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  bool texthome = false;

  bool textAnime = false;

  bool textMovies = false;

  bool textBooks = false;

  bool textShopping = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBarBgColor,
      height: 82.h,
      width: 1440.w,
      child: Row(
        children: [
          SizedBox(
            width: 200.w,
          ),
          RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Toobi",
              style: TextStyle(
                  color: AppColors.textwhiteColor,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: Assets.poppinsRegular),
            ),
            TextSpan(
              text: "AI",
              style: TextStyle(
                  color: AppColors.textblueColor,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: Assets.poppinsRegular),
            )
          ])),
          SizedBox(
            width: 200.w,
          ),
          InkWell(
            onTap: () {
              Get.to(Delivery());
              setState(() {
                texthome = true;
                textAnime = false;
                textBooks = false;
                textMovies = false;
                textShopping = false;
              });
            },
            child: Text(
              "home",
              style: TextStyle(
                  color: texthome
                      ? AppColors.textblueColor
                      : AppColors.textwhiteColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.poppinsRegular),
            ),
          ),
          SizedBox(
            width: 48.w,
          ),
          InkWell(
            onTap: () {
              texthome = false;
              textAnime = true;
              textBooks = false;
              textMovies = false;
              textShopping = false;
              Get.to(Categories(
                image: Assets.animeBackground,
                title: "Anime",
              ));
              setState(() {});
            },
            child: Text(
              "Anime",
              style: TextStyle(
                  color: textAnime
                      ? AppColors.textblueColor
                      : AppColors.textwhiteColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.poppinsRegular),
            ),
          ),
          SizedBox(
            width: 48.w,
          ),
          InkWell(
            onTap: () {
              Get.to(Categories(
                image: Assets.moviesBackground,
                title: "Movies",
              ));
              setState(() {
                texthome = false;
                textAnime = false;
                textBooks = false;
                textMovies = true;
                textShopping = false;
              });
            },
            child: Text(
              "Movies",
              style: TextStyle(
                  color: textMovies
                      ? AppColors.textblueColor
                      : AppColors.textwhiteColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.poppinsRegular),
            ),
          ),
          SizedBox(
            width: 48.w,
          ),
          InkWell(
            onTap: () {
              texthome = false;
              textAnime = false;
              textBooks = true;
              textMovies = false;
              textShopping = false;
              Get.to(Categories(
                image: Assets.booksBackground,
                title: "Books",
              ));
              setState(() {
                texthome = false;
                textAnime = false;
                textBooks = false;
                textMovies = true;
                textShopping = false;
              });
            },
            child: Text(
              "Books",
              style: TextStyle(
                  color: textBooks
                      ? AppColors.textblueColor
                      : AppColors.textwhiteColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.poppinsRegular),
            ),
          ),
          SizedBox(
            width: 48.w,
          ),
          InkWell(
            onTap: () {
              Get.to(Categories(
                image: Assets.shoppingBackground,
                title: "Shopping Prodduct",
              ));
              setState(() {
                texthome = false;
                textAnime = false;
                textBooks = false;
                textMovies = false;
                textShopping = true;
              });
            },
            child: Text(
              "Shopping Products",
              style: TextStyle(
                  color: textShopping
                      ? AppColors.textblueColor
                      : AppColors.textwhiteColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.poppinsRegular),
            ),
          ),
          SizedBox(
            width: 30.w,
          ),
          InkWell(
            onTap: () {
              Get.to(() => DownloadWeb());
            },
            child: Container(
              height: 50.h,
              width: 159.w,
              decoration: BoxDecoration(
                  color: AppColors.containerbgblueColor,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Center(
                child: Text(
                  "Download App",
                  style: TextStyle(
                      color: AppColors.textBlackColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: Assets.poppinsRegular),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
