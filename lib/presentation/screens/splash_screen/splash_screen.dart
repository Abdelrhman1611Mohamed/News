import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/assets_manger/assets_manger.dart';
import '../../../core/utils/routes_manager/routes_manger.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
Timer(const Duration(seconds: 2),(){Navigator.pushReplacementNamed(context,RoutesManager.home);},);
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Stack(
        alignment:Alignment.center,
        children: [
          Image.asset(AssetsManager.routeImage,fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Image.asset(AssetsManager.logo,width: 199.w,height: 208.h,),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AssetsManager.supervised,width: 213.w,height: 128.h,),
              )
            ],
          )

        ],
      ),
    );

  }
}
