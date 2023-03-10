import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';
import 'package:toobai_project_web_app/Widgets/widgets.dart';

import '../../Utils/image_in_App/images.dart';

class ProductDetailsWeb extends StatelessWidget {
  String title;
  String pNAme;
  String image;
  ProductDetailsWeb(
      {required this.image, required this.pNAme, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WidgetsAll.CustomtopNavigationBAr(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 288.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    height: 40.h,
                    width: 211.w,
                    decoration: BoxDecoration(
                      color: AppColors.containerBgColor,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              color: AppColors.textwhiteColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppColors.iconwhiteColor,
                          size: 10,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          pNAme,
                          style: TextStyle(
                              color: AppColors.textblueColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: Assets.poppinsRegular),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 444.h,
                        width: 337.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                          height: 444.h,
                          width: 337.w,
                        ),
                      ),
                      SizedBox(
                        width: 64.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pNAme,
                            style: TextStyle(
                                color: AppColors.textwhiteColor,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: Assets.poppinsRegular),
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Container(
                            height: 110.h,
                            width: 463.w,
                            child: Text(
                              "Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam quis risus eget urna mollis ornare vel eu leo.",
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
                          Row(
                            children: [
                              Container(
                                height: 50.h,
                                width: 160.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    border: Border.all(
                                        width: 1,
                                        color: AppColors.bordergreyColor)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      Assets.imdb,
                                      height: 20.h,
                                      width: 40.w,
                                    ),
                                    Text(
                                      "6.4/10",
                                      style: TextStyle(
                                          color: AppColors.textwhiteColor,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: Assets.poppinsRegular),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Container(
                                height: 50.h,
                                width: 160.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    border: Border.all(
                                        width: 1,
                                        color: AppColors.bordergreyColor)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      Assets.fruit,
                                      height: 20.h,
                                      width: 40.w,
                                    ),
                                    Text(
                                      "75%",
                                      style: TextStyle(
                                          color: AppColors.textwhiteColor,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: Assets.poppinsRegular),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50.h,
                                width: 280.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: AppColors.containerbgblueColor),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "BUY ITEM",
                                        style: TextStyle(
                                            color: AppColors.textBlackColor,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: Assets.poppinsRegular),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Icon(
                                        Icons.shopping_cart,
                                        size: 15,
                                      )
                                    ]),
                              ),
                              SizedBox(
                                width: 32.w,
                              ),
                              Icon(
                                Icons.thumb_up_alt_outlined,
                                color: AppColors.iconblueColor,
                                size: 25.sp,
                              ),
                              SizedBox(
                                width: 24.w,
                              ),
                              Icon(
                                Icons.thumb_down_alt_outlined,
                                color: AppColors.iconblueColor,
                                size: 25.sp,
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "PROPERTY",
                        style: TextStyle(
                            color: AppColors.textgreyColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: Assets.poppinsRegular),
                      ),
                      Spacer(),
                      Text(
                        "Aenean lacinia",
                        style: TextStyle(
                            color: AppColors.textwhiteColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: Assets.poppinsRegular),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "PROPERTY",
                        style: TextStyle(
                            color: AppColors.textgreyColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: Assets.poppinsRegular),
                      ),
                      Spacer(),
                      Text(
                        "Aenean lacinia",
                        style: TextStyle(
                            color: AppColors.textwhiteColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: Assets.poppinsRegular),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "PROPERTY",
                        style: TextStyle(
                            color: AppColors.textgreyColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: Assets.poppinsRegular),
                      ),
                      Spacer(),
                      Text(
                        "Aenean lacinia",
                        style: TextStyle(
                            color: AppColors.textwhiteColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: Assets.poppinsRegular),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "PROPERTY",
                        style: TextStyle(
                            color: AppColors.textgreyColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: Assets.poppinsRegular),
                      ),
                      Spacer(),
                      Text(
                        "Aenean lacinia",
                        style: TextStyle(
                            color: AppColors.textwhiteColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: Assets.poppinsRegular),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "PROPERTY",
                        style: TextStyle(
                            color: AppColors.textgreyColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: Assets.poppinsRegular),
                      ),
                      Spacer(),
                      Text(
                        "Aenean lacinia",
                        style: TextStyle(
                            color: AppColors.textwhiteColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: Assets.poppinsRegular),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "PROPERTY",
                        style: TextStyle(
                            color: AppColors.textgreyColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: Assets.poppinsRegular),
                      ),
                      Spacer(),
                      Text(
                        "Aenean lacinia",
                        style: TextStyle(
                            color: AppColors.textwhiteColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: Assets.poppinsRegular),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 49.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "REPORT A PROBLEM",
                        style: TextStyle(
                            color: AppColors.textblueColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: Assets.poppinsRegular),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 49.h,
                  ),
                  Text(
                    "321 Comments",
                    style: TextStyle(
                        color: AppColors.textblueColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: Assets.poppinsRegular),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    height: 50.h,
                    width: 864.w,
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
                        labelText: "What are your thoughts?",
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
                    height: 24.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50.h,
                        width: 814.w,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r),
                                borderSide: BorderSide(
                                    color: AppColors.borderblueColor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r),
                                borderSide: BorderSide(
                                    color: AppColors.borderblueColor)),
                            labelText: "Enter Your Name(Optional)",
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
                      Spacer(),
                      Container(
                        height: 50.h,
                        width: 50.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: AppColors.containerbgblueColor),
                        child: Center(
                            child: Icon(
                          Icons.send,
                          color: AppColors.iconwhiteColor,
                          size: 15.sp,
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 688.w,
                    height: 850.h,
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 16.h),
                            child: Container(
                              height: 190.h,
                              width: 864.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "FirstName Lastname",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins',
                                        color: AppColors.textwhiteColor),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Text(
                                    "25/02/2022",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins',
                                        color: AppColors.textgreyColor),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Container(
                                    width: 864.w,
                                    child: Text(
                                      "“Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Morbi leo risus, porta ac consectetur ac, vestibulum at eros..”",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color: AppColors.textgreyColor),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "26 Likes",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            color: AppColors.textblueColor),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Icon(
                                        Icons.thumb_up_alt_outlined,
                                        color: AppColors.iconblueColor,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 18.w,
                                      ),
                                      Text(
                                        "4 Dislikes",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            color: AppColors.textblueColor),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Icon(
                                        Icons.thumb_down_alt_outlined,
                                        color: AppColors.iconblueColor,
                                        size: 15,
                                      ),
                                      Spacer(),
                                      Text(
                                        "Reply",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            color: AppColors.textblueColor),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Icon(
                                        Icons.reply_sharp,
                                        color: AppColors.iconblueColor,
                                        size: 15,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(height: 105.h,),
            Center(child: WidgetsAll.downloadContainer()),
            SizedBox(height: 184.h,),
            WidgetsAll.footer()
          ],
        ),
      ),
    );
  }
}
