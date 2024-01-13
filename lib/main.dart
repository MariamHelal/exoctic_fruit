import 'package:flutter/material.dart';
import 'widgets/navigation_bar.dart';

void main() {
  runApp(const ExoticFruitApp());
}
class ExoticFruitApp extends StatelessWidget {
  const ExoticFruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBarWidget(),
    );
  }
}




