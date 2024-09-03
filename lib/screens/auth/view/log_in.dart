import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';
import 'package:socialapp/widgets/app_text_formfield.dart';

class LogIn extends StatefulWidget {
  LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController? controller = TextEditingController();
  TextEditingController? passController = TextEditingController();
  FocusNode emailFN = FocusNode();
  FocusNode passFN = FocusNode();
  RxBool isEmail = false.obs;
  RxBool isPassword = false.obs;
  RxBool isObSecure = false.obs;

  @override
  void initState() {
    super.initState();
    emailFN.addListener(() {});
    emailFN.addListener(() {
      if (emailFN.hasFocus) {
        isEmail.value = true;
      } else {
        isEmail.value = false;
      }
      log("==== isEmail.value=true; ${isEmail.value}");
    });
    passFN.addListener(() {
      log("==== listener added");

      if (passFN.hasFocus) {
        isPassword.value = true;
      } else {
        isPassword.value = false;
      }
      log("==== isEmail.value=true; ${isEmail.value}");
    });
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return BaseScaffold(
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.315,
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      child: SvgPicture.asset(
                        AppImage.lightBgVector,
                        height: Get.height * 0.315,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: SvgPicture.asset(
                        AppImage.darkBgVector,
                        height: Get.height * 0.315,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: dimensions.paddingXL, right: dimensions.paddingXL),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TxtStyle.heading.copyWith(
                          fontSize: 32,
                          color: AppColor.kPrimary,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Please sign in to continue",
                      style: TxtStyle.small.copyWith(),
                    ),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),

                    AppTextFormField(
                        controller: controller!,
                        focusNode: emailFN,
                        labelText: 'EMAIL',
                        isSelected: isEmail.value,
                        isPrefix: true,
                        svgPrefixICon: AppImage.mail),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    AppTextFormField(
                        controller: passController!,
                        focusNode: passFN,
                        labelText: 'PASSWORD',
                        obscureText: isObSecure.value,
                        isSelected: isPassword.value,
                        isPrefix: true,
                        svgPrefixICon: AppImage.lock,
                       isSuffix: true,
                      suffixWidget:GestureDetector(
                        onTap: (){
                          isObSecure.value=!isObSecure.value;
                        },
                        child: SvgPicture.asset(
                            AppImage.inVisible,
                            height: 24,
                            color: isPassword.value
                                ? AppColor.kPrimary
                                : AppColor.kGrey),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.005,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.findByPhone);
                      },
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("FORGET PASSWORD?",
                              style: TxtStyle.small.copyWith(
                                   color: AppColor.kGrey))),
                    ),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),

                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.landing);
                      },
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                dimensions.borderRadiusLarge),
                            gradient: const LinearGradient(
                                colors: AppColor.gradientColor)),
                        child: Center(
                            child: Text(
                          "Login",
                          style: TxtStyle.body.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: AppColor.kWhite),
                        )),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: dimensions.paddingXXL),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColor.kPrimary.withOpacity(0.50),
                        thickness: 1,
                        endIndent: 10, // Space between the line and "OR"
                      ),
                    ),
                    Text(
                      "or",
                      style: TxtStyle.caption.copyWith(color: AppColor.kGrey),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppColor.kPrimary.withOpacity(0.50),
                        thickness: 1,
                        indent: 10, // Space between the line and "OR"
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        color: AppColor.kPrimaryLight,
                        borderRadius: BorderRadius.circular(
                            dimensions.borderRadiusSmall)),
                    child: Padding(
                      padding: EdgeInsets.all(dimensions.paddingExtraSmall),
                      child: SvgPicture.asset(
                        AppImage.google,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.height * 0.02,
                  ),
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        color: AppColor.kPrimaryLight,
                        borderRadius: BorderRadius.circular(
                            dimensions.borderRadiusSmall)),
                    child: Padding(
                      padding: EdgeInsets.all(dimensions.paddingExtraSmall),
                      child: SvgPicture.asset(
                        AppImage.outlook,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.height * 0.02,
                  ),
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        color: AppColor.kPrimaryLight,
                        borderRadius: BorderRadius.circular(
                            dimensions.borderRadiusSmall)),
                    child: Padding(
                      padding: EdgeInsets.all(dimensions.paddingExtraSmall),
                      child: SvgPicture.asset(
                        AppImage.dropbox,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account ? ",
                    style: TxtStyle.small.copyWith(fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.signUp);
                      },
                      child: Text(
                        "SIGN UP",
                        style:
                            TxtStyle.caption.copyWith(color: AppColor.kPrimary),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
