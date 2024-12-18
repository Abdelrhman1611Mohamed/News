import 'package:flutter/material.dart';
import 'package:news_apps/core/utils/colors_manger/colors_manger.dart';
import '../../core/utils/assets_manger/assets_manger.dart';
import '../../core/utils/constants_manger/constants_manger.dart';
import '../../core/utils/strings_manger/strings_manger.dart';

class CategoryDM
{
  String id;
  String title;
  Color bgColor;
  String imagePath;
  CategoryDM({required this.id,required this.title,required this.imagePath,required this.bgColor});
  static List<CategoryDM>getAllCategories=[
    CategoryDM(
        id:Constantsmanger.sportsBackEngId,
        title:StringsManger.sports,
        imagePath: AssetsManager.sports,
        bgColor: ColorsManger.red),
    CategoryDM(
        id:Constantsmanger.generalBackEngId,
        title:StringsManger.general,
        imagePath: AssetsManager.general,
        bgColor: Colors.grey),
    CategoryDM(
        id:Constantsmanger.healthsBackEngId,
        title:StringsManger.health,
        imagePath: AssetsManager.health,
        bgColor: ColorsManger.pink),
    CategoryDM(
        id:Constantsmanger.businessBackEngId,
        title:StringsManger.business,
        imagePath: AssetsManager.business,
        bgColor: ColorsManger.brown),
    CategoryDM(
        id:Constantsmanger.scienceBackEngId,
        title:StringsManger.science,
        imagePath: AssetsManager.science,
        bgColor: ColorsManger.yallow),
    CategoryDM(
        id:Constantsmanger.entertainmentBackEngId,
        title:StringsManger.entertainment,
        imagePath: AssetsManager.entertainment,
        bgColor: ColorsManger.blue),
    CategoryDM(
        id:Constantsmanger.technologyBackEngId,
        title:StringsManger.technology,
        imagePath: AssetsManager.technology,
        bgColor: ColorsManger.green),
  ];
}