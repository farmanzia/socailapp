import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/main.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';

import '../../widgets/drawerWidget.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var di = Dimensions(context);
    return Scaffold(
        key: _scaffoldKey,
        drawer: Container(
          height: Get.height,
          width: Get.width,
          color: AppColor.kWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.only(left: di.paddingMedium),
                child: GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
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
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: di.paddingLarge),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColor.kPrimaryLight),
                      child: Padding(
                        padding: EdgeInsets.all(di.paddingExtraSmall),
                        child: const Icon(
                          Icons.link,
                          size: 60,
                          color: AppColor.kPrimary,
                        ),
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
        appBar: AppBar(
          forceMaterialTransparency: true,
          leading: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState
                  ?.openDrawer(); // Use the key to open the drawer
            },
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: SvgPicture.asset(
                AppImage.menu,
                height: 12,
                width: 12,
              ),
            ),
          ),
          actions: [
            SvgPicture.asset(AppImage.alert),
            SizedBox(
              width: Get.width * 0.02,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  color: AppColor.lightBlue,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                    AppImage.userAvatar,
                  ))),
            ),
            SizedBox(
              width: Get.width * 0.05,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: di.paddingMedium),
                child: Row(
                  children: [
                    Text(
                      "Upcoming Events",
                      style: TxtStyle.caption,
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: TxtStyle.small,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.002,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    common.eventImg.length,
                    (index) => GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.eventInformation);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: di.paddingMedium,
                            bottom: di.paddingSmall,
                            top: di.paddingMedium),
                        child: Container(
                          height: Get.height * 0.2,
                          width: Get.width * 0.85,
                          decoration: BoxDecoration(
                              // color: AppColor.lightBlue,
                              // shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    common.eventImg[index],
                                  ))),
                          child: Padding(
                            padding: EdgeInsets.all(di.paddingSmall),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xff2D264B).withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Group Event',
                                        style: TxtStyle.small.copyWith(
                                            color: AppColor.kWhite,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xff2D264B)
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Coldplay : Music of the Spheres',
                                                overflow: TextOverflow.ellipsis,
                                                style: TxtStyle.small.copyWith(
                                                    color: AppColor.kWhite,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                'Gelora Bung Karno Stadium..',
                                                overflow: TextOverflow.ellipsis,
                                                style: TxtStyle.small.copyWith(
                                                    color: AppColor.kWhite,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Text(
                                                'November 15 2023',
                                                style: TxtStyle.small.copyWith(
                                                    color: AppColor.kWhite,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Start from',
                                              style: TxtStyle.small.copyWith(
                                                  color: AppColor.kWhite,
                                                  fontSize: 12),
                                            ),
                                            Text(
                                              ' 11:00 am',
                                              style: TxtStyle.small.copyWith(
                                                  color: AppColor.kWhite,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: di.paddingMedium),
                child: Row(
                  children: [
                    const Text(
                      "Suggested Events",
                      style: TxtStyle.caption,
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: TxtStyle.small,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.002,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    common.eventImg2.length,
                    (index) => GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.eventInformation);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: di.paddingMedium,
                            bottom: di.paddingSmall,
                            top: di.paddingMedium),
                        child: Container(
                          height: Get.height * 0.2,
                          width: Get.width * 0.85,
                          decoration: BoxDecoration(
                              // color: AppColor.lightBlue,
                              // shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    common.eventImg2[index],
                                  ))),
                          child: Padding(
                            padding: EdgeInsets.all(di.paddingSmall),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xff2D264B).withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Group Event',
                                        style: TxtStyle.small.copyWith(
                                            color: AppColor.kWhite,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xff2D264B)
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Coldplay : Music of the Spheres',
                                                overflow: TextOverflow.ellipsis,
                                                style: TxtStyle.small.copyWith(
                                                    color: AppColor.kWhite,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                'Gelora Bung Karno Stadium..',
                                                overflow: TextOverflow.ellipsis,
                                                style: TxtStyle.small.copyWith(
                                                    color: AppColor.kWhite,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Text(
                                                'November 15 2023',
                                                style: TxtStyle.small.copyWith(
                                                    color: AppColor.kWhite,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Start from',
                                              style: TxtStyle.small.copyWith(
                                                  color: AppColor.kWhite,
                                                  fontSize: 12),
                                            ),
                                            Text(
                                              ' 11:00 am',
                                              style: TxtStyle.small.copyWith(
                                                  color: AppColor.kWhite,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.002,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: di.paddingMedium),
                child: Row(
                  children: [
                    const Text(
                      "Active Groups",
                      style: TxtStyle.caption,
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: TxtStyle.small,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.002,
              ),
              Padding(
                padding: EdgeInsets.only(left: di.paddingSmall),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                          common.eventImg.length,
                          (index) => Padding(
                                padding: EdgeInsets.all(di.paddingSmall),
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 0.0),
                                  // height: 44,
                                  width: Get.width / 1.5,
                                  decoration: BoxDecoration(
                                    color: AppColor.kWhite,
                                    border: Border.all(color: AppColor.kGrey),
                                    borderRadius:
                                        BorderRadius.circular(di.borderRadius),
                                    boxShadow: [
                                      BoxShadow(
                                          color: AppColor.shadowColor,
                                          blurRadius: 5,
                                          spreadRadius: 0,
                                          offset: const Offset(1, 1))
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(di.paddingLarge),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          AppImage.personAvatar,
                                          height: 60,
                                        ),
                                        SizedBox(
                                          width: Get.height * 0.01,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Person Name",
                                              style: TxtStyle.caption,
                                            ),
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 4,
                                                  backgroundColor:
                                                      AppColor.kPurpleLight,
                                                ),
                                                Text(
                                                  " 5 new messages",
                                                  style: TxtStyle.small,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Get.height * 0.008,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ))),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: di.paddingMedium),
                child: Row(
                  children: [
                    const Text(
                      "Suggested Groups",
                      style: TxtStyle.caption,
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: TxtStyle.small,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.002,
              ),
              Padding(
                padding: EdgeInsets.only(left: di.paddingSmall),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                          common.eventImg.length,
                          (index) => Padding(
                                padding: EdgeInsets.all(di.paddingSmall),
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 0.0),
                                  // height: 44,
                                  width: Get.width / 1.5,
                                  decoration: BoxDecoration(
                                    color: AppColor.kWhite,
                                    border: Border.all(color: AppColor.kGrey),
                                    borderRadius:
                                        BorderRadius.circular(di.borderRadius),
                                    boxShadow: [
                                      BoxShadow(
                                          color: AppColor.shadowColor,
                                          blurRadius: 5,
                                          spreadRadius: 0,
                                          offset: const Offset(1, 1))
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(di.paddingLarge),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          AppImage.personAvatar,
                                          height: 60,
                                        ),
                                        SizedBox(
                                          width: Get.height * 0.01,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Person Name",
                                              style: TxtStyle.caption,
                                            ),
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 4,
                                                  backgroundColor:
                                                      AppColor.kPurpleLight,
                                                ),
                                                Text(
                                                  " 5 new messages",
                                                  style: TxtStyle.small,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Get.height * 0.008,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ))),
                ),
              ),
            ],
          ),
        ));
  }
}
