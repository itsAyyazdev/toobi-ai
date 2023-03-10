import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toobai_project_web_app/Views/delivery/delivery_mobile.dart';
import 'package:toobai_project_web_app/Views/delivery/delivery_web.dart';
import 'package:toobai_project_web_app/responsive.dart';

class Delivery extends StatelessWidget {
  const Delivery ({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,designSize: Size(Responsive.isMobile(context)? 375:1440,Responsive.isMobile(context)? 812:1150));
   return Responsive.isMobile(context)?
       DeliveryMobile():DeliveryWeb();
    
  }
}