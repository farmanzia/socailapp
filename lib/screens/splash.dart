import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_style.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.toNamed(AppRoutes.login);
    });
    return Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: AppColor.gradientColor,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 134,
                  height: 134,
                  decoration: BoxDecoration(color: AppColor.kWhite,
                  borderRadius: BorderRadius.circular(30)
                  ),
                ),
                SizedBox(height: Get.height*0.02,),
                Text(
                  'Connect App',
                  style: TxtStyle.heading.copyWith(color: AppColor.kWhite)
                ),
                SizedBox(height: Get.height*0.0009,),
                Text(
                  textAlign: TextAlign.center,
                  'This is lorem ipsum text for tagline purpose',
                  style: TxtStyle.caption.copyWith(color: AppColor.kWhite)
                ),
              ],
            ),
          ),
        ),);
  }
}
