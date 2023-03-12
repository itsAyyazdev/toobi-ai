import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';
import 'package:toobai_project_web_app/Views/SearchResult/search_result.dart';

import '../../Utils/image_in_App/images.dart';
import 'category_components.dart';

class CategoryMobile extends StatefulWidget {
  String title;
  CategoryMobile({required this.title});

  @override
  State<CategoryMobile> createState() => _CategoryMobileState();
}

class _CategoryMobileState extends State<CategoryMobile> {
  final searchController =TextEditingController();
  bool search = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 105.h,
              width: 375.w,
              color: AppColors.appBarBgColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.iconblueColor,
                          ),
                        ),
                        Spacer(),
                        Text(
                          widget.title,
                          style: TextStyle(
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              color: AppColors.textwhiteColor),
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Spacer()
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    search
                        ? Container(
                            height: 42.h,
                            width: 345.w,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                suffixIcon: InkWell(
                                  onTap: () {
                                    searchController.clear();
                                  },
                                  child: Icon(Icons.cancel_outlined)),
                                suffixIconColor: AppColors.iconblueColor,
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 15,
                                ),
                                prefixIconColor: AppColors.iconblueColor,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        color: AppColors.borderblueColor)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        color: AppColors.borderblueColor)),
                                labelText: "Search",
                                labelStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.textwhiteColor,
                                ),
                              ),
                              style: TextStyle(
                                  color: AppColors.textwhiteColor,
                                  fontFamily: Assets.poppinsRegular,
                                  fontSize: 14.sp),
                            ),
                          )
                        : Container(
                            height: 42.h,
                            width: 345.w,
                            child: TextFormField(
                              onTap: () {
                                setState(() {
                                  search = true;
                                });
                              },
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 15,
                                ),
                                prefixIconColor: AppColors.iconblueColor,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        color: AppColors.borderblueColor)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        color: AppColors.borderblueColor)),
                                labelText: "Search",
                                labelStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.textwhiteColor,
                                ),
                              ),
                              style: TextStyle(
                                  color: AppColors.textwhiteColor,
                                  fontFamily: Assets.poppinsRegular,
                                  fontSize: 14.sp),
                            ),
                          )
                  ],
                ),
              ),
            ),
            search?Text(""):Padding(
              padding: EdgeInsets.only(left: 16.w, top: 24.h),
              child: Text(
                "MOST POPULAR SEARCHES",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: AppColors.textgreyColor),
              ),
            ),
           search?SizedBox(
              height: 0.h,
            ): SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: search?SizedBox(
                width: 343.w,
                height: 400.h,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(()=>SearchResult(image: "", title: widget.title));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 16.h),
                          child: Text(
                            "Item name",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                color: AppColors.textwhiteColor),
                          ),
                        ),
                      );
                    }),
              ):SizedBox(
                width: 343.w,
                height: 400.h,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 16.h),
                        child: InkWell(
                          onTap: () {
                            Get.to(() =>
                                SearchResult(image: "", title: widget.title));
                          },
                          child: Container(
                            height: 48.h,
                            width: 343.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.containerBgColor),
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
