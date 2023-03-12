import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';
import 'package:toobai_project_web_app/Views/SearchResult/search_result_component.dart';
import 'package:toobai_project_web_app/Views/productDeatils/productDetails.dart';

import '../../Utils/image_in_App/images.dart';
import '../../Widgets/widgets.dart';

class SearchResultWeb extends StatelessWidget {
  String image;
  String title;
  SearchResultWeb({required this.image, required this.title});
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
              padding: EdgeInsets.symmetric(horizontal: 200.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 210.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 176.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                            SearchResultCompoent.CustomSearchBAr(
                                title: "Search"),
                            SizedBox(
                              width: 16.w,
                            ),
                            InkWell(
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 155.h,
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
                    width: 1040.w,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          mainAxisSpacing: 48.h,
                          childAspectRatio: 0.5,
                          crossAxisSpacing: 24.w),
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(() => ProductDetails(
                                image: Assets.product,
                                pNAme: "Item Name",
                                title: title));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 264.w,
                                width: 189.w,
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
                                    fontSize: 20.sp,
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
                  SizedBox(
                    height: 64.h,
                  ),
                  Container(
                    height: 274.h,
                    width: 1040.w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AppColors.bordergreyColor)),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 88.w, right: 424.w, top: 64.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Missing Items",
                            style: TextStyle(
                                color: AppColors.textwhiteColor,
                                fontSize: 24.sp,
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
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: Assets.poppinsRegular),
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50.h,
                                width: 400.w,
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
                              Spacer(),
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
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2335.h),
              child: WidgetsAll.footer(),
            )
          ],
        ),
      ),
    );
  }
}
