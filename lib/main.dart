import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import 'Views/delivery/delivery.dart';


void main() async {
  // await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
  // MaterialApp(
  //   builder: (context, child) {
  //       ScreenUtil.init(context);
  //       return Theme(
  //           data: ThemeData(
  //             primarySwatch: Colors.blue,
  //           ),
  //           child: Delivery());
  //     },
  // );
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      
          designSize: Size( 375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              home: Delivery(),
            );
          }
    );
  }
}

