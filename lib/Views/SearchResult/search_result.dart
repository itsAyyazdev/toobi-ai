import 'package:flutter/material.dart';
import 'package:toobai_project_web_app/Views/SearchResult/search_result_mobile.dart';
import 'package:toobai_project_web_app/Views/SearchResult/search_result_web.dart';

import 'package:toobai_project_web_app/responsive.dart';

class SearchResult extends StatelessWidget {
  String image;
  String title;
   SearchResult ({  
    required this.image,
    required this.title
  });
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context,designSize: Size(Responsive.isMobile(context)? 375:1440,Responsive.isMobile(context)? 812:1150));
   return Responsive.isMobile(context)?
       SearchResultMobile(title: title,):SearchResultWeb(image: image,title: title,);
    
  }
}