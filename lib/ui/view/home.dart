import 'package:flutter/material.dart';
import 'package:toobiai/ui/mobile/home_page.dart';
import 'package:toobiai/ui/web/home_page.dart';
import 'package:toobiai/utils/responsive.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobileView: HomePageMobile(),
      webView: HomePageWeb(),
      tabView: HomePageWeb(),
    );
  }
}
