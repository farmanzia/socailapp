import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';
import 'package:socialapp/widgets/drawerWidget.dart';

import '../utils/app_color.dart';
import '../utils/app_images.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var di = Dimensions(context);
    return Container(
      height: Get.height,
      width: Get.width,
      color: AppColor.kWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start
        ,
        children: [
          SizedBox(
            height: Get.height * 0.1,
          ),
          Padding(
            padding: EdgeInsets.only(left: di.paddingLarge),
            child: GestureDetector(
              onTap: (){
                Get.back();
              },
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.kPrimaryLight),
                  child: Padding(
                    padding: EdgeInsets.all(di.paddingExtraSmall),
                    child: const Icon(
                      Icons.close,
                      color: AppColor.kPrimary,
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Padding(
            padding:  EdgeInsets.only(left: di.paddingMedium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: di.paddingLarge),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColor.kPrimaryLight),
                        child: Padding(
                          padding: EdgeInsets.all(di.paddingExtraSmall),
                          child:SvgPicture.asset(AppImage.link)
                        )),
                  ),
                  SizedBox(
                    width: Get.width * 0.04,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Connect App',
                          style: TxtStyle.heading.copyWith(color: AppColor.kPrimary,fontWeight: FontWeight.bold,fontSize: 18)
                      ),
                      SizedBox(height: Get.height*0.0009,),
                      Text(
                          textAlign: TextAlign.center,
                          'This is lorem ipsum text for tagline',
                          style: TxtStyle.small.copyWith()
                      ),
                    ],)

                ],),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Padding(
                  padding:  const EdgeInsets.only(left:  22),
                  child: DrawerWidget(assetName: AppImage.profileSetting, data: "Profile Setting", onTap: () {
                    Get.back();
                    Get.toNamed(AppRoutes.profileSetting);
                  },),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Padding(
                  padding:  EdgeInsets.only(left:  di.paddingLarge),
                  child: DrawerWidget(assetName: AppImage.share, data: "Share", onTap: () {  },),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Padding(
                  padding:  EdgeInsets.only(left:  di.paddingLarge),
                  child: DrawerWidget(assetName: AppImage.feedback, data: "Feedback", onTap: () {  },),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Padding(
                  padding:  EdgeInsets.only(left:  di.paddingLarge),
                  child: DrawerWidget(assetName: AppImage.privacyPolicy, data: "Privacy Policy", onTap: () {  },),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Padding(
                  padding:  EdgeInsets.only(left:  di.paddingLarge),
                  child: DrawerWidget(assetName: AppImage.moreApps, data: "More Apps", onTap: () {  },),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Padding(
                  padding:  EdgeInsets.only(left:  di.paddingLarge),
                  child: DrawerWidget(assetName: AppImage.term, data: "Term & Conditions", onTap: () {  },),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: Get.width*0.48,
                    child: Column(
                      children: [
                        const Divider(
                          thickness: 0.5,),

                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:  di.paddingLarge),
                          child: Text("Version 1.0",style: TxtStyle.small,),
                        )
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
