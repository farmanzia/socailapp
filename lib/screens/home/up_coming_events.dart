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
import 'package:socialapp/widgets/AppDrawer.dart';

class UpComing extends StatelessWidget {
  UpComing({super.key});
  TextEditingController controller = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var di = Dimensions(context);
    return  Scaffold(
      key: _scaffoldKey,
      drawer: const AppDrawer(),
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
          title: const Text(
            "Events",
            style: TxtStyle.heading,
          ),
          centerTitle: true,
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
                padding: EdgeInsets.all(di.paddingMedium),
                child: TextFormField(
                  controller: controller,
                  style: TxtStyle.small.copyWith(
                      color: AppColor.kPrimary, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    hintText: 'Search event..',
                    filled: true,
                    fillColor: AppColor.fieldColor,
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(di.paddingMedium),
                      child: SvgPicture.asset(AppImage.filter),
                    ),
                    contentPadding: const EdgeInsets.only(bottom: 0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(di.borderRadius),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(di.borderRadius),
                      borderSide: const BorderSide(color: Colors.transparent),
                      gapPadding: 0,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: di.paddingMedium, bottom: di.paddingSmall),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColor.lightPurple,
                            borderRadius:
                                BorderRadius.circular(di.borderRadius)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: di.paddingMedium,
                              vertical: di.paddingSmall),
                          child: Text(
                            'Mental Health',
                            style: TxtStyle.caption.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColor.lightYellow,
                            borderRadius:
                                BorderRadius.circular(di.borderRadius)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: di.paddingMedium,
                              vertical: di.paddingSmall),
                          child: Text(
                            'Fitness',
                            style: TxtStyle.caption.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColor.lightOrange,
                            borderRadius:
                                BorderRadius.circular(di.borderRadius)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: di.paddingMedium,
                              vertical: di.paddingSmall),
                          child: Text(
                            'Nutrition',
                            style: TxtStyle.caption.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColor.lightGreen,
                            borderRadius:
                                BorderRadius.circular(di.borderRadius)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: di.paddingMedium,
                              vertical: di.paddingSmall),
                          child: Text(
                            'Theater',
                            style: TxtStyle.caption.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: di.paddingMedium),
                child: Row(
                  children: [
                    const Text(
                      "My Events",
                      style: TxtStyle.caption,
                    ),
                    const Spacer(),
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
                      onTap: (){Get.toNamed(AppRoutes.eventInformation);},
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
                                        color: const Color(0xff2D264B)
                                            .withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Group Event',
                                        style: TxtStyle.small.copyWith(
                                            color: AppColor.kWhite, fontSize: 12),
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
                                                style: TxtStyle.small.copyWith(
                                                    color: AppColor.kWhite,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              Text(
                                                'Gelora Bung Karno Stadium..',
                                                style: TxtStyle.small.copyWith(
                                                    color: AppColor.kWhite,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Text(
                                                'November 15 2023',
                                                style: TxtStyle.small.copyWith(
                                                    color: AppColor.kWhite,
                                                    fontWeight: FontWeight.w400),
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
                      "Trending Events",
                      style: TxtStyle.caption,
                    ),
                    const Spacer(),
                    Text(
                      "See all",
                      style: TxtStyle.small,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children:
               List.generate(5, (index) => Padding(
                  padding: EdgeInsets.only(
                      left: di.paddingMedium,
                      bottom: di.paddingSmall,
                      top: di.paddingMedium),
                  child: Container(
                    // height: double.infinity,
                    width: Get.width * 0.45,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      border: Border.all(color: AppColor.kGrey),
                      borderRadius:
                      BorderRadius.circular(di.borderRadius),
                      boxShadow: [
                        BoxShadow(
                            color: AppColor.kGrey.withOpacity(0.2),
                            blurRadius: 5,
                            spreadRadius: 5,
                            offset: const Offset(1, 1))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(di.paddingSmall),
                      child: Column(
                        children: [
                          Image.asset(
                            common.eventImg[1],
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: Get.height * 0.009,
                          ),
                          Text(
                            "Muse : Will of the People",
                            style: TxtStyle.caption
                                .copyWith(fontSize: 14),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppImage.location,
                                color: AppColor.kDarkGrey,
                                height: 24,
                              ),
                              Text(
                                "City, Country",
                                style: TxtStyle.small.copyWith(
                                    color: AppColor.kDarkGrey,
                                    ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: Get.height * 0.005,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: Get.width * 0.01,
                              ),
                              SvgPicture.asset(
                                AppImage.calendar,
                                color: AppColor.kDarkGrey,
                                height: 16,
                              ),
                              SizedBox(
                                width: Get.width * 0.01,
                              ),
                              Text(
                                "City, Country",
                                style: TxtStyle.small.copyWith(
                                    color: AppColor.kDarkGrey,
                                    ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: Get.height * 0.015,
                          ),
                          Container(
                            height: 40,
                            width: Get.width * 0.6,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    di.borderRadius),
                                gradient: const LinearGradient(
                                    colors: AppColor.gradientColor)),
                            child: Center(
                                child: Text(
                                  "Join",
                                  style: TxtStyle.body.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: AppColor.kWhite),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                )) ),
              ),
              SizedBox(
                height: Get.height * 0.002,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: di.paddingMedium),
                child: Row(
                  children: [
                    const Text(
                      "Nearby Events",
                      style: TxtStyle.caption,
                    ),
                    const Spacer(),
                    Text(
                      "See all",
                      style: TxtStyle.small,
                    ),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children:
                List.generate(5, (index) => Padding(
                  padding: EdgeInsets.only(
                      left: di.paddingMedium,
                      bottom: di.paddingSmall,
                      top: di.paddingMedium),
                  child: Container(
                    // height: double.infinity,
                    width: Get.width * 0.45,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      border: Border.all(color: AppColor.kGrey),
                      borderRadius:
                      BorderRadius.circular(di.borderRadius),
                      boxShadow: [
                        BoxShadow(
                            color: AppColor.kGrey.withOpacity(0.2),
                            blurRadius: 5,
                            spreadRadius: 5,
                            offset: const Offset(1, 1))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(di.paddingSmall),
                      child: Column(
                        children: [
                          Image.asset(
                            common.eventImg[1],
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: Get.height * 0.009,
                          ),
                          Text(
                            "Muse : Will of the People",
                            style: TxtStyle.caption
                                .copyWith(fontSize: 14),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppImage.location,
                                color: AppColor.kDarkGrey,
                                height: 24,
                              ),
                              Text(
                                "City, Country",
                                style: TxtStyle.small.copyWith(
                                    color: AppColor.kDarkGrey,
                                 ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: Get.height * 0.005,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: Get.width * 0.01,
                              ),
                              SvgPicture.asset(
                                AppImage.calendar,
                                color: AppColor.kDarkGrey,
                                height: 16,
                              ),
                              SizedBox(
                                width: Get.width * 0.01,
                              ),
                              Text(
                                "City, Country",
                                style: TxtStyle.small.copyWith(
                                    color: AppColor.kDarkGrey,
                                    ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: Get.height * 0.015,
                          ),
                          Container(
                            height: 40,
                            width: Get.width * 0.6,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    di.borderRadius),
                                gradient: const LinearGradient(
                                    colors: AppColor.gradientColor)),
                            child: Center(
                                child: Text(
                                  "Join",
                                  style: TxtStyle.body.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: AppColor.kWhite),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                )) ),
              ),
            ],
          ),
        ),

    floatingActionButton: GestureDetector(
      onTap: (){
        Get.toNamed(AppRoutes.create);
      },
      child: Container(
        height: 60,
        width: 60,
        // width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                di.borderRadiusLarge),
            gradient: const LinearGradient(
                colors: AppColor.gradientColor)),
        child: const Center(
            child:Icon(Icons.add,color: AppColor.kWhite,
              size: 32,
              )),
      ),
    ),
    );
  }
}
