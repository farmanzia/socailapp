import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';

class EventInformation extends StatelessWidget {
  const EventInformation({super.key});

  @override
  Widget build(BuildContext context) {
    var dimensions = Dimensions(context);
    return BaseScaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                MainAxisAlignment.start,
                children: [
                  Container(
                    height: Get.height * 0.35,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              AppImage.informationImg,
                            ),
                            fit: BoxFit.fill)),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                          vertical: dimensions.paddingXL,
                          horizontal:  dimensions.paddingSmall),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap:(){
                              Get.back();
                            },
                            child: Container(
                              decoration:BoxDecoration(
                                color: AppColor.kGrey,
                                borderRadius: BorderRadius.circular(dimensions.borderRadius)
                              ),
                              child: const Padding(
                                padding:  EdgeInsets.only(left: 12,right:6,top: 12,bottom:
                                12),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration:BoxDecoration(
                              color: AppColor.kGrey,
                              borderRadius: BorderRadius.circular(dimensions.borderRadius)
                            ),
                            child: Padding(
                              padding:  EdgeInsets.all(dimensions.paddingSmall),
                              child: SvgPicture.asset(AppImage.chat,color: AppColor.kWhite,)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: Get.height * 0.15,
                        left: dimensions.paddingMedium,
                        right: dimensions.paddingMedium),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TxtStyle.heading.copyWith(fontSize: 18),
                        ),
                        Text(
                          textAlign: TextAlign.justify,
                          "Integer id augue iaculis, iaculis orci ut, blandit quam. Donec in elit auctor, finibus quam in, phar. Proin id ligula dictum, covalis enim ut, facilisis massa. Mauris a nisi ut sapien blandit imperdi. Interdum et malesuada fames ac ante ipsum primis in faucibs. Sed posuere egestas nunc ut tempus. Fu ipsum dolor sit amet. Read More..",
                          style: TxtStyle.small,
                        ),
                        Text(
                          "Read More..",
                          style: TxtStyle.caption
                              .copyWith(color: Color(0xff0092FC)),
                        ),
                        Text(
                          "Venue & Location",
                          style: TxtStyle.heading.copyWith(fontSize: 18),
                        ),
                        SizedBox(
                          height: Get.height * 0.005,
                        ),
                        Image.asset(
                            width: double.infinity,
                            fit: BoxFit.fill,
                            AppImage.map)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                top: Get.height * 0.25,
                left: Get.width * 0.05,
                right: Get.width * 0.05,
                child: Container(
                  width: Get.width,
                  // margin: EdgeInsets.symmetric(horizontal: dimensions.marginLarge),
                  decoration: BoxDecoration(
                    color: AppColor.kWhite,
                    border: Border.all(color: AppColor.kGrey),
                    borderRadius:
                        BorderRadius.circular(dimensions.borderRadius),
                    boxShadow: [
                      BoxShadow(
                          color: AppColor.shadowColor,
                          blurRadius: 5,
                          spreadRadius: 0,
                          offset: const Offset(1, 1))
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(dimensions.paddingMedium),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Coldplay : ",
                              style: TxtStyle.caption
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Music of the Spheres",
                              style: TxtStyle.caption.copyWith(
                                  color: Color(0xff771cbd),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.005,
                        ),
                        Text(
                          "Muse : Will of the People",
                          style: TxtStyle.caption.copyWith(fontSize: 14),
                        ),

                        SizedBox(
                          height: Get.height * 0.005,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppImage.location,
                              color: AppColor.kGrey,
                              height: 24,
                            ),
                            Text(
                              "City, Country",
                              style: TxtStyle.small.copyWith(
                                  color: AppColor.kDarkGrey),
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
                              color: AppColor.kGrey,
                              height: 16,
                            ),
                            SizedBox(
                              width: Get.width * 0.01,
                            ),
                            Text(
                              "City, Country",
                              style: TxtStyle.small.copyWith(
                                  color: AppColor.kDarkGrey),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.005,
                        ),
                        Row(
                          children: [
                            Stack(
                              children: List.generate(
                                3,
                                (index) => Padding(
                                  padding: EdgeInsets.only(left: index * 30.0),
                                  child: const CircleAvatar(
                                    radius: 24,
                                    backgroundImage:
                                        AssetImage(AppImage.userAvatar),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            const Text(
                              "50K+ Participants",
                              style: TxtStyle.caption,
                            )
                          ],
                        )

                        //               SizedBox(
                        //               height: 80,
                        //                 width: 300,// Adjust height as needed
                        //               child: Stack(
                        // children: List.generate(3, (index) {
                        // return Positioned(
                        // left: index * 30.0, // Adjust overlap distance here
                        // child: CircleAvatar(
                        // radius: 30,
                        // backgroundColor: Colors.white,
                        // child: CircleAvatar(
                        // radius: 28,
                        //
                        // ),
                        // ),
                        // );
                        // }),
                        // ),
                        // )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(dimensions.paddingLarge),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Start from",
                  style: TxtStyle.small
                      .copyWith(color: AppColor.kDarkGrey, fontSize: 14),
                ),
                Text(
                  "11 : 00 am",
                  style: TxtStyle.small.copyWith(
                      color: AppColor.kDarkGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Spacer(),
            Container(
              height: 50,
              padding:
                  EdgeInsets.symmetric(horizontal: dimensions.paddingMedium),
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(dimensions.borderRadiusLarge),
                  gradient:
                      const LinearGradient(colors: AppColor.gradientColor)),
              child: Center(
                  child: Text(
                "Login",
                style: TxtStyle.body.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: AppColor.kWhite),
              )),
            )
          ],
        ),
      ),

    );
  }
}
