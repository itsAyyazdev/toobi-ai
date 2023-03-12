import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;

  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.desktop,
  }) : super(key: key);

  // This isMobile, isTablet, isDesktop help us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 450;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 400;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width >= 450) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tabl
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
