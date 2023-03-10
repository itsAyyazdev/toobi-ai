import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toobai_project_web_app/Utils/Colors/colors.dart';

import '../../Utils/image_in_App/images.dart';
import '../../Widgets/widgets.dart';

class DownloadWeb extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body:Column(
        children: [
          WidgetsAll.CustomtopNavigationBAr(),
          SizedBox(height: 105.h,),
           Padding(
             padding:  EdgeInsets.symmetric(horizontal: 200.w),
             child: Row(
               children: [
                 Column(
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
                     SizedBox(height: 32.h,),
                     SizedBox(
                        width:350.w ,
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
                                 borderRadius:
                                     BorderRadius.circular(15.r)),
                             child: Padding(
                               padding: EdgeInsets.symmetric(horizontal: 10.w),
                               child: Row(
                                 children: [
                                   SizedBox(
                                       height: 28.h,
                                       width: 25.w,
                                       child: Image.asset(
                                           Assets.playstoreLogo)),
                                   Column(crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       SizedBox(height: 5.h,),
                                       Text(
                                         "GET IT ON",
                                         style: TextStyle(
                                             color:
                                                 AppColors.textwhiteColor,
                                             fontSize: 10.sp,
                                             fontWeight: FontWeight.w400,
                                             fontFamily:
                                                 Assets.poppinsRegular),
                                       ),
                                       Text(
                                         "Google PLay",
                                         style: TextStyle(
                                             color:
                                                 AppColors.textwhiteColor,
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
                           SizedBox(width: 16.w,),
                           Container(
                             height: 61.h,
                             width: 148.5.w,
                             decoration: BoxDecoration(
                                 color: AppColors.appBarBgColor,
                                 border: Border.all(
                                     width: 1,
                                     color: AppColors.bordergreyColor),
                                 borderRadius:
                                     BorderRadius.circular(15.r)),
                             child: Padding(
                               padding: EdgeInsets.symmetric(horizontal: 10.w),
                               child: Row(
                                 children: [
                                   SizedBox(
                                       height: 28.h,
                                       width: 25.w,
                                       child: Image.asset(
                                           Assets.appleLogo)),
                                   Column(crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       SizedBox(height: 5.h,),
                                       Text(
                                         "DOWNLOAD ON THE",
                                         style: TextStyle(
                                             color:
                                                 AppColors.textwhiteColor,
                                             fontSize: 10.sp,
                                             fontWeight: FontWeight.w400,
                                             fontFamily:
                                                 Assets.poppinsRegular),
                                       ),
                                       Text(
                                         "App Store",
                                         style: TextStyle(
                                             color:
                                                 AppColors.textwhiteColor,
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
                 Padding(
                   padding:  EdgeInsets.only(top: 47.h,),
                   child: Image.asset(Assets.iphone,height: 482.h,width: 463.w,fit: BoxFit.fill,),
                 )
               ],
             ),
           ),
           
            SizedBox(height: 40.h,),
           WidgetsAll.footer()
        ],
      ) ,
    );
  }

}