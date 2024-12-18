import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_apps/core/utils/colors_manger/colors_manger.dart';
import '../../../../../core/utils/app_stayel/app_stayl.dart';
import '../../../../../core/utils/strings_manger/strings_manger.dart';
typedef  OnDrawerItemCeliked = void Function (MenuItem);
class HomeDrawer extends StatelessWidget {
  OnDrawerItemCeliked onDrawerItemClciked;
  HomeDrawer({super.key ,required this.onDrawerItemClciked});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer
        (
        width:326.w,
        child: Column
          (
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height:110.h,
              color: ColorsManger.green,
                child: Text(StringsManger.drawerTitle,style: AppStyale.drawer)),
            SizedBox(height: 25.h,),
            Padding(
              padding:REdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  InkWell(
                    onTap:
                    (){
                      onDrawerItemClciked(MenuItem.catgories);
                      Navigator.pop(context);
                    }
                    ,
                    child: Row(
                      children: [
                        Icon(Icons.list,size: 35.sp,),
                        SizedBox(width: 10.w,),
                        Text("Categories",style: AppStyale.drawerItem,)

                      ],
                    ),
                  ),
                  SizedBox(height: 18.h,),
                  InkWell(
                    onTap:
                    (){
                      onDrawerItemClciked(MenuItem.settings);
                      Navigator.pop(context);
                    }
                    ,
                    child: Row(
                      children: [
                    Icon(Icons.settings,size: 35.sp,),
                        SizedBox(width: 10.w,),
                        Text("Settings",style: AppStyale.drawerItem,)

                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),

      ),
    );
  }

}
enum MenuItem
{
  catgories,
  settings,
}
