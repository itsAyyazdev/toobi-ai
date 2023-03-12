import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';
import 'package:toobai_project_web_app/Views/download/Downloadwebmbile.dart';

import '../../Utils/image_in_App/images.dart';
import '../../Widgets/widgets.dart';

class ProductDetailsWebMbile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.appBackground,
        body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                
                children: [
                      WidgetsAll.MobileAppBar(),
                      Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(children: [
                    Container(
                      height: 132.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Image.asset(
                        Assets.product,
                        fit: BoxFit.fill,
                        height: 132.h,
                        width: 100.w,
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Product Name",
                          style: TextStyle(
                              color: AppColors.textwhiteColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 36.h,
                              width: 103.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                      width: 1,
                                      color: AppColors.bordergreyColor)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Assets.imdb,
                                    height: 15.h,
                                    width: 30.w,
                                  ),
                                  Text(
                                    "6.4/10",
                                    style: TextStyle(
                                        color: AppColors.textwhiteColor,
                                        fontSize: 12.sp,
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
                              height: 36.h,
                              width: 103.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
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
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: Assets.poppinsRegular),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
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
                        )
                      ],
                    ),
                  ]),
                  SizedBox(
                    height: 16.h,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(()=>DownloadWebMbile());
                    },
                    child: Container(
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
                  ),
                   SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                        color: AppColors.textgreyColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: Assets.poppinsRegular),
                  ),
                   SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam quis risus eget urna mollis ornare vel eu leo.",
                    style: TextStyle(
                        color: AppColors.textgreyColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: Assets.poppinsRegular),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                          "See More",
                          style: TextStyle(
                              color: AppColors.textblueColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: Assets.poppinsRegular),
                        ),
                        Icon(Icons.arrow_drop_down,color: AppColors.iconblueColor,)
                        ],
                      ),
                         SizedBox(
                        height: 19.h,
                      ),
                       Text(
                        "321 Comments",
                        style: TextStyle(
                            color: AppColors.textwhiteColor,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: Assets.poppinsRegular),
                      ),
                       SizedBox(
                        height: 24.h,
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
                        height: 16.h,
                      ),
                       Row(
                        children: [
                          Container(
                            height: 42.h,
                            width: 283.w,
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
                            height: 42.h,
                            width: 42.h,
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
                        width: 343.w,
                        height: 590.h,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                            itemCount: 9,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 16.h),
                                child: Container(
                                  height: 100.h,
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
                      WidgetsAll.bottonBar()
                    ]),
            )));
  }
}
