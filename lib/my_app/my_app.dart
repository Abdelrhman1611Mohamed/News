import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/theme/application_theme.dart';
import '../core/utils/routes_manager/routes_manger.dart';
import '../presentation/screens/splash_screen/splash_screen.dart';
class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 891),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: RoutesManager.routes,
        initialRoute: RoutesManager.splash,
        theme: ApplicationTheme.Light,
        themeMode:ThemeMode.light
      ),
    );
  }
}
