
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';
import 'package:socialapp/widgets/app_text_formfield.dart';


class FindAccountByEmail extends StatefulWidget {
  FindAccountByEmail({super.key});

  @override
  State<FindAccountByEmail> createState() => _FindAccountByEmailState();
}

class _FindAccountByEmailState extends State<FindAccountByEmail> {

  TextEditingController? email = TextEditingController();
  FocusNode emailFn=FocusNode();
  RxBool isEmail = false.obs;
  @override
  void initState() {
    super.initState();
    emailFn.addListener(() {
      log("==== listener added");

      if (emailFn.hasFocus) {
        isEmail.value = true;
      } else {
        isEmail.value = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return BaseScaffold(
      body: Obx(
            ()=> Padding(
          padding:  EdgeInsets.all(dimensions.paddingXL),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Get.height*0.15,),
              Text(
                "Find Your Account",
                style: TxtStyle.heading.copyWith(
                    color: AppColor.kPrimary,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Enter your Email",
                style: TxtStyle.small.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              AppTextFormField(
                  controller: email!,
                  focusNode: emailFn,
                  labelText: 'EMAIL',
                  isSelected: isEmail.value,
                  isPrefixSvg: true,
                  svgPrefixICon: AppImage.mail),
              SizedBox(
                height: Get.height * 0.06,
              ),
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoutes.verify);
                },
                child: Container(
                  height: 40,
                  width: Get.width*0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(dimensions.borderRadiusLarge),
                      gradient: const LinearGradient(colors: AppColor.gradientColor)
                  ),
                  child: Center(child: Text("Find Account",style: TxtStyle.body.copyWith( fontWeight: FontWeight.w700, fontSize: 15,color: AppColor.kWhite),)),
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoutes.findByPhone);
                },
                child: Text(
                  "Search by mobile number instead",

                  style: TxtStyle.small.copyWith(
                      decoration: TextDecoration.underline,
                      decorationColor: AppColor.kGrey
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
