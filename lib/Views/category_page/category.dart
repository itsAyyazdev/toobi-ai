import 'package:flutter/material.dart';
import 'package:toobai_project_web_app/Views/category_page/category_web.dart';
import 'package:toobai_project_web_app/responsive.dart';

import 'category_mobile.dart';

class Categories extends StatelessWidget {
  String image;
  String title;
   Categories ({  
    required this.image,
    required this.title
  });
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context,designSize: Size(Responsive.isMobile(context)? 375:1440,Responsive.isMobile(context)? 812:1150));
   return Responsive.isMobile(context)?
       CategoryMobile(title: title,):CategoryWeb(image: image,title: title,);
    
  }
}