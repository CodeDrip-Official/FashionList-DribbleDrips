import 'package:fashion_list/screens/home_screen.dart';
import 'package:fashion_list/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FashionList",
      theme: AppTheme.themeData,
      home: const HomeScreen(),
    );
  }
}
