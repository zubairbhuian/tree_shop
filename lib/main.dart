import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/utils/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.bgColor,
        primaryColor: AppColor.mainColor,
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: AppColor.textColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
