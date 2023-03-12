import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';
import 'package:toobai_project_web_app/Views/productDeatils/product_details_web.dart';
import 'package:toobai_project_web_app/Views/productDeatils/product_details_web_mbile.dart';

import '../../Utils/image_in_App/images.dart';
import '../../Widgets/widgets.dart';

class SearchResultWebMbile extends StatelessWidget {
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
              Column(children: [
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
                                borderSide:
                                    BorderSide(color: AppColors.borderblueColor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.r),
                                borderSide:
                                    BorderSide(color: AppColors.borderblueColor)),
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
                        onTap: () {},
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
                        "15 results for “item name”",
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
                        height: 1200.h,
                        width: 347.w,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.43,
                              crossAxisSpacing: 24.w),
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Get.to(()=>ProductDetailsWebMbile());
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 222.w,
                                    width: 160.w,
                                    child: Image.asset(
                                      Assets.product,
                                      fit: BoxFit.fill,
                                      height: 264.h,
                                      width: 189.w,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    "Item Name",
                                    style: TextStyle(
                                        color: AppColors.textwhiteColor,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: Assets.poppinsRegular),
                                  ),
                                  SizedBox(
                                    height: 8.h,
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
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  SizedBox(
                                    height: 96.h,
                                    width: 188.w,
                                    child: Text(
                                      "Nullam quis risus eget urna mollis ornare vel eu leo. Lorem ipsum dolor sit... more",
                                      style: TextStyle(
                                          color: AppColors.textgreyColor,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: Assets.poppinsRegular),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Text(
                        "Missing Items?",
                        style: TextStyle(
                            color: AppColors.textwhiteColor,
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: Assets.poppinsRegular),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Type in the textfiled below a result that you’d like to have seen!",
                        style: TextStyle(
                            color: AppColors.textgreyColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: Assets.poppinsRegular),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Container(
                                  height: 50.h,
                                  width: 347.w,
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                          borderSide: BorderSide(
                                              color: AppColors.borderblueColor)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                          borderSide: BorderSide(
                                              color: AppColors.borderblueColor)),
                                      labelText:
                                          "Enter a result you think is missing!",
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
                                 Row(mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     Container(
                                      height: 50.h,
                                      width: 100.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: AppColors.borderblueColor),
                                        borderRadius: BorderRadius.circular(15.r),
                                      ),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Send",
                                              style: TextStyle(
                                                  color: AppColors.textgreyColor,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: Assets.poppinsRegular),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Icon(
                                              Icons.send,
                                              size: 15.sp,
                                              color: AppColors.iconwhiteColor,
                                            )
                                          ]),
                                ),
                                   ],
                                 ),
                                 SizedBox(
                        height: 60.h,
                      ),
                    ],
                  ),
                ),
                WidgetsAll.bottonBar(),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
