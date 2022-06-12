import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/views/home/home_view.dart';
import 'package:flutter_responsive_app/constants/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Palette.myThemeColor,
      ),
      home: HomeView(),
    );
  }
}
