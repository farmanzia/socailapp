import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socialapp/main.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_constant.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';

Widget bottomBar(context) {
  var di=Dimensions(context);
  return Container(
      decoration:  BoxDecoration(
          color:AppColor.kWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, -5), // Move shadow upwards
          ),
        ],

          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions(context).borderRadius),
            topRight: Radius.circular(Dimensions(context).borderRadius),
          )),
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: di.paddingMedium),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                AppConstant().bottomBarItem.length,
                    (index) => GestureDetector(
                  onTap: (){
                      common.bottomBarIndex.value= index;
                      log("======= clicked ${common.bottomBarIndex.value} ");
                  },
                  child: Padding(
                    padding:  EdgeInsets.all(Dimensions(context).paddingSmall),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          AppConstant().bottomBarItem[index],
                          color:common.bottomBarIndex.value==index? AppColor.kPrimary:null,
                        ),

                      ],
                    ),
                  ),
                ))),
      ));
}