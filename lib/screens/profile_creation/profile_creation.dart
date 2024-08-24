import 'package:flutter/material.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/screens/base_scaffold.dart';

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';

class ProfileCreation extends StatefulWidget {
  ProfileCreation({super.key});

  @override
  State<ProfileCreation> createState() => _ProfileCreationState();
}

class _ProfileCreationState extends State<ProfileCreation> {
  TextEditingController? name = TextEditingController();
  TextEditingController? lastName = TextEditingController();
  TextEditingController? gender = TextEditingController();
  TextEditingController? location = TextEditingController();
  TextEditingController? aboutMe = TextEditingController();
  FocusNode nameFN = FocusNode();
  FocusNode lastNameFN = FocusNode();
  FocusNode genderFN = FocusNode();
  FocusNode locationFN = FocusNode();
  FocusNode aboutFN = FocusNode();
  RxBool isName = false.obs;
  RxBool isLastName = false.obs;
  RxBool isGender = false.obs;
  RxBool isLocation = false.obs;
  RxBool isAboutMe = false.obs;

  @override
  void initState() {
    super.initState();

    nameFN.addListener(() {
      log("==== listener added");
      if (nameFN.hasFocus) {
        isName.value = true;
      } else {
        isName.value = false;
      }
    });
    lastNameFN.addListener(() {
      if (lastNameFN.hasFocus) {
        isLastName.value = true;
      } else {
        isLastName.value = false;
      }
    });
    genderFN.addListener(() {
      if (genderFN.hasFocus) {
        isGender.value = true;
      } else {
        isGender.value = false;
      }
    });
    locationFN.addListener(() {
      log("==== listener added");

      if (locationFN.hasFocus) {
        isLocation.value = true;
      } else {
        isLocation.value = false;
      }
    });
    aboutFN.addListener(() {
      log("==== listener added");

      if (aboutFN.hasFocus) {
        isAboutMe.value = true;
      } else {
        isAboutMe.value = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return BaseScaffold(
      body: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * 0.08,
            ),
            const Text(
              "Profile Creation",
              style: TxtStyle.heading,
            ),
            SizedBox(
              height: Get.height * 0.025,
            ),
            // SvgPicture.asset(AppImage.user),
            Container(
              height: Get.height * 0.15,
              padding: EdgeInsets.all(dimensions.paddingExtraSmall),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.kPrimary)),
              child: Container(
                height: 124,
                decoration: BoxDecoration(
                    color: AppColor.lightBlue,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                      AppImage.userAvatar,
                    ))),
              ),
            ),
            SizedBox(
              height: Get.height * 0.015,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: dimensions.paddingXL, right: dimensions.paddingXL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  const Text(
                    "First Name*",
                    style: TxtStyle.caption,
                  ),
                  SizedBox(
                    height: Get.height * 0.004,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      border: Border.all(
                          color: isName.value
                              ? AppColor.kPrimary
                              : Colors.transparent),
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
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 44,
                              // width: 200,
                              child: Center(
                                child: TextFormField(
                                  controller: name,
                                  focusNode: nameFN,
                                  style: TxtStyle.body.copyWith(
                                      fontSize: 10,
                                      color: AppColor.kPrimary,
                                      fontWeight: FontWeight.w500),
                                  decoration: InputDecoration(
                                    hintText: "First Name",
                                    labelStyle: TxtStyle.small.copyWith(
                                        fontSize: 7,
                                        fontWeight: FontWeight.w500),
                                    labelText: "First Name",
                                    contentPadding:
                                        const EdgeInsets.only(bottom: 0),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      gapPadding: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  const Text(
                    "Last Name*",
                    style: TxtStyle.caption,
                  ),
                  SizedBox(
                    height: Get.height * 0.004,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      border: Border.all(
                          color: isLastName.value
                              ? AppColor.kPrimary
                              : Colors.transparent),
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
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 44,
                              // width: 200,
                              child: Center(
                                child: TextFormField(
                                  controller: lastName,
                                  focusNode: lastNameFN,
                                  style: TxtStyle.body.copyWith(
                                      fontSize: 10,
                                      color: AppColor.kPrimary,
                                      fontWeight: FontWeight.w500),
                                  decoration: InputDecoration(
                                    hintText: "Last Name",
                                    labelStyle: TxtStyle.small.copyWith(
                                        fontSize: 7,
                                        fontWeight: FontWeight.w500),
                                    labelText: "Last Name",
                                    contentPadding:
                                        const EdgeInsets.only(bottom: 0),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      gapPadding: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  const Text(
                    "Gender",
                    style: TxtStyle.caption,
                  ),
                  SizedBox(
                    height: Get.height * 0.004,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      border: Border.all(
                          color: isGender.value
                              ? AppColor.kPrimary
                              : Colors.transparent),
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
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 44,
                              // width: 200,
                              child: Center(
                                child: TextFormField(
                                  controller: gender,
                                  focusNode: genderFN,
                                  style: TxtStyle.body.copyWith(
                                      fontSize: 10,
                                      color: AppColor.kPrimary,
                                      fontWeight: FontWeight.w500),
                                  decoration: InputDecoration(
                                    hintText: "Gender",
                                    labelStyle: TxtStyle.small.copyWith(
                                        fontSize: 7,
                                        fontWeight: FontWeight.w500),
                                    labelText: "Gender",
                                    contentPadding:
                                        const EdgeInsets.only(bottom: 0),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      gapPadding: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  const Text(
                    "Location",
                    style: TxtStyle.caption,
                  ),
                  SizedBox(
                    height: Get.height * 0.004,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      border: Border.all(
                          color: isLocation.value
                              ? AppColor.kPrimary
                              : Colors.transparent),
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
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 44,
                              // width: 200,
                              child: Center(
                                child: TextFormField(
                                  controller: location,
                                  focusNode: locationFN,
                                  style: TxtStyle.body.copyWith(
                                      fontSize: 10,
                                      color: AppColor.kPrimary,
                                      fontWeight: FontWeight.w500),
                                  decoration: InputDecoration(
                                    hintText: "Location",
                                    labelStyle: TxtStyle.small.copyWith(
                                        fontSize: 7,
                                        fontWeight: FontWeight.w500),
                                    labelText: "Location",
                                    contentPadding:
                                        const EdgeInsets.only(bottom: 0),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      gapPadding: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  SizedBox(
                    height: Get.height * 0.004,
                  ),
                  const Text(
                    "About Me",
                    style: TxtStyle.caption,
                  ),
                  SizedBox(
                    height: Get.height * 0.004,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      border: Border.all(
                          color: isAboutMe.value
                              ? AppColor.kPrimary
                              : Colors.transparent),
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Get.width * 0.02,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 100,
                            child: TextFormField(
                              controller: aboutMe,
                              focusNode: aboutFN,
                              style: TxtStyle.body.copyWith(
                                  fontSize: 10,
                                  color: AppColor.kPrimary,
                                  fontWeight: FontWeight.w500),
                              maxLines: 4,
                              decoration: InputDecoration(
                                hintText: "About Me",
                                labelStyle: TxtStyle.small.copyWith(
                                    fontSize: 7, fontWeight: FontWeight.w500),
                                labelText: "About Me",
                                contentPadding:
                                    const EdgeInsets.only(bottom: 0),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.005,
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.permission);
                      },
                      child: Container(
                        height: 40,
                        width: Get.width * 0.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                dimensions.borderRadiusLarge),
                            gradient: const LinearGradient(
                                colors: AppColor.gradientColor)),
                        child: Center(
                            child: Text(
                          "Next",
                          style: TxtStyle.body.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: AppColor.kWhite),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
