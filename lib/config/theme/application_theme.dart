import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_apps/core/utils/colors_manger/colors_manger.dart';
import '../../core/utils/app_stayel/app_stayl.dart';
class ApplicationTheme
{
  static final ThemeData Light=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:AppBarTheme(
   iconTheme: const IconThemeData(
     color: ColorsManger.white
   ),
      backgroundColor: ColorsManger.appBarColors,
      centerTitle: true,
      shape:  OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft:Radius.circular(50.r),
          bottomRight: Radius.circular(50.r)
        )
      ),
      titleTextStyle:AppStyale.appBarStayl

    )
  );
}