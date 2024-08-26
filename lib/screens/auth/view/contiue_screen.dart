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
import 'package:socialapp/widgets/app_text_formfield.dart';


class ContiueScreen extends StatefulWidget {
  ContiueScreen({super.key});

  @override
  State<ContiueScreen> createState() => _ContiueScreenState();
}

class _ContiueScreenState extends State<ContiueScreen> {

  TextEditingController? name = TextEditingController();
  TextEditingController? email = TextEditingController();
  TextEditingController? passController = TextEditingController();
  TextEditingController? confirmPassController = TextEditingController();
  TextEditingController? phone = TextEditingController();
  FocusNode nameFN=FocusNode();
  FocusNode emailFN=FocusNode();
  FocusNode passFN=FocusNode();
  FocusNode conPassFN=FocusNode();
  FocusNode phoneFN=FocusNode();
  RxBool isName = false.obs;
  RxBool isEmail = false.obs;
  RxBool isPassword = false.obs;
  RxBool isConPass = false.obs;
  RxBool isPhone = false.obs;

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
      log("==== isEmail.value=true; ${isEmail.value}");
    });
    emailFN.addListener(() {
      log("==== listener added");

      if (emailFN.hasFocus) {
        isEmail.value = true;
      } else {
        isEmail.value = false;
      }
    });
    passFN.addListener(() {
      if (passFN.hasFocus) {
        isPassword.value = true;
      } else {
        isPassword.value = false;
      }
    });
    conPassFN.addListener(() {
      log("==== listener added");

      if (conPassFN.hasFocus) {
        isConPass.value = true;
      } else {
        isConPass.value = false;
      }
    });
    phoneFN.addListener(() {
      log("==== listener added");

      if (phoneFN.hasFocus) {
        isPhone.value = true;
      } else {
        isPhone.value = false;
      }
      log("==== isEmail.value=true; ${isEmail.value}");
    });
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return BaseScaffold(
      body: Obx(
            ()=> Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Get.height*0.15,),
            SvgPicture.asset(AppImage.user),
            SizedBox(height: Get.height*0.015,),
            Padding(
              padding: EdgeInsets.only(
                  left: dimensions.paddingXL, right: dimensions.paddingXL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "User Name",
                    style: TxtStyle.heading.copyWith(
                        fontSize: 15,
                        color: AppColor.kPrimary,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: Get.height*0.01,),
                  Text(
                    "Choose a way to log in",
                    style: TxtStyle.small.copyWith(),
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  AppTextFormField(
                      controller: name!,
                      focusNode: nameFN,
                      labelText: 'First Name',
                      isSelected: isName.value,
                      isPrefixSvg: true,
                      svgPrefixICon: AppImage.mail),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      border: Border.all(color:isEmail.value? AppColor.kPrimary:Colors.transparent),
                      borderRadius: BorderRadius.circular(dimensions.borderRadius),
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
                          SvgPicture.asset(
                              AppImage.mail,
                              height: 24,
                              color:isEmail.value? AppColor.kPrimary:AppColor.kGrey
                          ),
                          SizedBox(
                            width: Get.width * 0.04,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 44,
                              // width: 200,
                              child: Center(
                                child:  TextFormField(
                                  controller: email,
                                  focusNode: emailFN,
                                  style: TxtStyle.body.copyWith(fontSize: 10, color: AppColor.kPrimary,fontWeight: FontWeight.w500),
                                  decoration: InputDecoration(
                                    hintText: "EMAIL",
                                    labelStyle: TxtStyle.small.copyWith(fontSize: 7,fontWeight: FontWeight.w500),
                                    labelText: "EMAIL",
                                    contentPadding:
                                    const EdgeInsets.only(bottom: 0),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent),
                                      gapPadding: 0,
                                    ),
                                  ),
                                ),

                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color:  isEmail.value?AppColor.kPrimary : AppColor.kGrey),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor:isEmail.value?AppColor.kPrimary : Colors.transparent,),
                            ),
                          ),

                          SizedBox(
                            width: Get.width * 0.04,
                          ),

                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      border: Border.all(color:isConPass.value? AppColor.kPrimary:Colors.transparent),
                      borderRadius: BorderRadius.circular(dimensions.borderRadius),
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
                          SvgPicture.asset(
                              AppImage.lock,
                              height: 24,
                              color:isConPass.value? AppColor.kPrimary:AppColor.kGrey
                          ),
                          SizedBox(
                            width: Get.width * 0.04,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 44,
                              // width: 200,
                              child: Center(
                                child:  TextFormField(
                                  controller: confirmPassController,
                                  focusNode: conPassFN,
                                  style: TxtStyle.body.copyWith(fontSize: 10, color: AppColor.kPrimary,fontWeight: FontWeight.w500),
                                  decoration: InputDecoration(
                                    hintText: "PASSWORD",
                                    labelStyle: TxtStyle.small.copyWith(fontSize: 7,fontWeight: FontWeight.w500),
                                    labelText: "PASSWORD",
                                    contentPadding:
                                    const EdgeInsets.only(bottom: 0),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent),
                                      gapPadding: 0,
                                    ),
                                  ),
                                ),

                              ),
                            ),
                          ),
                          Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color:  isConPass.value?AppColor.kPrimary : AppColor.kGrey),

                          ),
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor:isConPass.value?AppColor.kPrimary : Colors.transparent,),
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.04,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      border: Border.all(color:isPhone.value? AppColor.kPrimary:Colors.transparent),
                      borderRadius: BorderRadius.circular(dimensions.borderRadius),
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
                          true? Icon(Icons.phone_outlined,color: isPhone.value? AppColor.kPrimary:AppColor.kGrey,):  SvgPicture.asset(
                              AppImage.phone,
                              height: 24,
                              color:isPassword.value? AppColor.kPrimary:AppColor.kGrey
                          ),
                          SizedBox(
                            width: Get.width * 0.04,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 44,
                              // width: 200,
                              child: Center(
                                child:  TextFormField(
                                  controller: phone,
                                  focusNode: phoneFN,
                                  style: TxtStyle.body.copyWith(fontSize: 10, color: AppColor.kPrimary,fontWeight: FontWeight.w500),
                                  decoration: InputDecoration(
                                    hintText: "PHONE NUMBER",
                                    labelStyle: TxtStyle.small.copyWith(fontSize: 7,fontWeight: FontWeight.w500),
                                    labelText: "PHONE NUMBER",
                                    contentPadding:
                                    const EdgeInsets.only(bottom: 0),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent),
                                      gapPadding: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color:  isPhone.value?AppColor.kPrimary : AppColor.kGrey),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor:isPhone.value?AppColor.kPrimary : Colors.transparent,),
                            ),
                          ),

                          SizedBox(
                            width: Get.width * 0.04,
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: Get.height * 0.005,
                  ),

                  SizedBox(
                    height: Get.height * 0.05,
                  ),
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoutes.profileCreation);
                },
                    child: Container(
                      height: 40,
                      width:  Get.width*0.7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(dimensions.borderRadiusLarge),
                          gradient: const LinearGradient(colors: AppColor.gradientColor)
                      ),
                      child: Center(child: Text("Continue",style: TxtStyle.body.copyWith( fontWeight: FontWeight.w700, fontSize: 15,color: AppColor.kWhite),)),
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
