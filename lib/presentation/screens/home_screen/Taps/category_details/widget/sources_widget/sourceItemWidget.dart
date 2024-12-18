import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_apps/config/theme/application_theme.dart';
import 'package:news_apps/core/utils/colors_manger/colors_manger.dart';
import 'package:news_apps/data/model/SourcesResponse/Sources.dart';

class Sourceitemwidget extends StatelessWidget {
  Source source;
  bool isSelected;
  Sourceitemwidget({super.key, required this.source,required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: isSelected ? ColorsManger.green : Colors.transparent,
          border: Border.all(
            width: 3,
              color: ColorsManger.green
          ),
          borderRadius: BorderRadius.circular(25.r)),
      child: Text(
        source.name!,
        style: TextStyle(
            color: isSelected ? ColorsManger.white : ColorsManger.green),
      ),
    );
  }
}
