import 'package:flutter/material.dart';

import 'views/home_page.dart';
import 'widgets/navigation_bar.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const ExoticFruitApp());
}
class ExoticFruitApp extends StatelessWidget {
  const ExoticFruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBarWidget(),
    );
  }
}




