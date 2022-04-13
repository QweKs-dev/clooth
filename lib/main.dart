import 'package:clooth/pages/splash_screen/page/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => GetMaterialApp(
        theme: ThemeData(
            textSelectionTheme:TextSelectionThemeData(
              cursorColor: Color.fromRGBO(20, 20, 20, 1),
            ),
        ),
        home: SplashScreen(),
      ),
    );
  }
}