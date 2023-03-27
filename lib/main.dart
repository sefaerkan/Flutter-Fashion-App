import 'package:fashion/screens/nav_bar.dart';
import 'package:fashion/screens/product_screen.dart';
import 'package:fashion/utils/colors.dart';
import 'package:fashion/widgets/filter_widget.dart';
import 'package:fashion/widgets/product_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.buttonColor,
          textTheme: ButtonTextTheme.primary,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.secondaryColor,
        ),
      ),
      home: const NavBar(),
    );
  }
}










