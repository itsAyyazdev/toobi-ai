import 'package:flutter/material.dart';
import 'package:toobai_project_web_app/Views/search/search_mobile.dart';
import 'package:toobai_project_web_app/Views/search/search_web.dart';

import 'package:toobai_project_web_app/responsive.dart';



class Search extends StatelessWidget {
  String title;
   Search ({  
    required this.title
  });
  @override
  Widget build(BuildContext context) {
   return Responsive.isMobile(context)?
       SearchMobile(title: title,):SearchWeb();
    
  }
}