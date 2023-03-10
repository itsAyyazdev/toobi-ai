import 'package:flutter/material.dart';
import 'package:toobai_project_web_app/Views/productDeatils/product_details_mobile.dart';
import 'package:toobai_project_web_app/Views/productDeatils/product_details_web.dart';

import '../../responsive.dart';

class ProductDetails extends StatelessWidget{
  String title;
  String pNAme;
  String image;
  ProductDetails(
      {required this.image, required this.pNAme, required this.title});
  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)?
       ProductDetailsMobile(image: image,pNAme: pNAme,):ProductDetailsWeb(image: image,pNAme: pNAme,title: title,);
  }

}