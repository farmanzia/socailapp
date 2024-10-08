
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


class FindAccountByEmail extends StatefulWidget {
  FindAccountByEmail({super.key});

  @override
  State<FindAccountByEmail> createState() => _FindAccountByEmailState();
}

class _FindAccountByEmailState extends State<FindAccountByEmail> {

  TextEditingController? phone = TextEditingController();
  FocusNode phoneFN=FocusNode();
  RxBool isPhone = false.obs;


  @override
  void initState() {
    super.initState();
    phoneFN.addListener(() {
      log("==== listener added");

      if (phoneFN.hasFocus) {
        isPhone.value = true;
      } else {
        isPhone.value = false;
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
                      SvgPicture.asset(AppImage.mail,color: isPhone.value? AppColor.kPrimary:AppColor.kGrey,)
                      ,
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
                    ],
                  ),
                ),
              ),
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
