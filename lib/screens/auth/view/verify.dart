import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
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


class Verify extends StatefulWidget {
  Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {

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
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: Get.height*0.1,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Verify Your Mobile",
                  style: TxtStyle.heading.copyWith(
                      fontSize: 20,
                      color: AppColor.kPrimary,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: Get.height*0.01,),
                Text(
                  "Enter your OTP code here",
                  style: TxtStyle.small.copyWith(),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),

              SvgPicture.asset(AppImage.vectorVerifyPhone),
                SizedBox(
                  height: Get.height * 0.005,
                ),
                CodeVerificationPage(),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoutes.login);
                  },
                  child: Container(
                    height: 40,
                    width:  Get.width*0.7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(dimensions.borderRadiusLarge),
                        gradient: const LinearGradient(colors: AppColor.gradientColor)
                    ),
                    child: Center(child: Text("Verify",style: TxtStyle.body.copyWith( fontWeight: FontWeight.w700, fontSize: 15,color: AppColor.kWhite),)),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.008,
                ),
                Text(
                  "Resend the code again",

                  style: TxtStyle.small.copyWith(
                      decoration: TextDecoration.underline,
                      decorationColor: AppColor.kGrey
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}

class CodeVerificationPage extends StatefulWidget {
  @override
  _CodeVerificationPageState createState() => _CodeVerificationPageState();
}

class _CodeVerificationPageState extends State<CodeVerificationPage> {
  final _digit1Controller = TextEditingController();
  final _digit2Controller = TextEditingController();
  final _digit3Controller = TextEditingController();
  final _digit4Controller = TextEditingController();

  final _digit1FocusNode = FocusNode();
  final _digit2FocusNode = FocusNode();
  final _digit3FocusNode = FocusNode();
  final _digit4FocusNode = FocusNode();

  @override
  void dispose() {
    _digit1Controller.dispose();
    _digit2Controller.dispose();
    _digit3Controller.dispose();
    _digit4Controller.dispose();
    _digit1FocusNode.dispose();
    _digit2FocusNode.dispose();
    _digit3FocusNode.dispose();
    _digit4FocusNode.dispose();
    super.dispose();
  }

  void _onDigitEntered(String value, FocusNode currentFocus, FocusNode nextFocus) {
    if (value.length == 1) {
      currentFocus.unfocus();
      if (nextFocus != null) {
        FocusScope.of(context).requestFocus(nextFocus);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildDigitField(_digit1Controller, _digit1FocusNode, _digit2FocusNode),
          SizedBox(width: Get.width*0.025,),
          _buildDigitField(_digit2Controller, _digit2FocusNode, _digit3FocusNode),
          SizedBox(width: Get.width*0.025,),
          _buildDigitField(_digit3Controller, _digit3FocusNode, _digit4FocusNode),
          SizedBox(width: Get.width*0.025,),
          _buildDigitField(_digit4Controller, _digit4FocusNode, FocusNode()),
        ],
      ),
    );
  }

  Widget _buildDigitField(TextEditingController controller, FocusNode currentFocus, FocusNode nextFocus) {
   var dimensions=Dimensions(context);
    return Container(

      padding: const EdgeInsets.symmetric(vertical: 0.0),
      // height: 60,
      width:70,

      decoration: BoxDecoration(
        color: AppColor.kWhite,
        border: Border.all(color:currentFocus.hasFocus? AppColor.kPrimary:Colors.transparent),
        borderRadius: BorderRadius.circular(dimensions.borderRadius),
        boxShadow: [
          BoxShadow(
              color: AppColor.shadowColor,
              blurRadius: 5,
              spreadRadius: 0,
              offset: const Offset(1, 1))
        ],
      ),

      child: TextFormField(
        controller: controller,
        focusNode: currentFocus,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        style: const TextStyle(fontSize: 24),

        decoration: const InputDecoration(
          counterText: '',
          enabledBorder: const OutlineInputBorder(borderSide:
          BorderSide(color: Colors.transparent),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.transparent),
            gapPadding: 0,
          ),
        ),
        onChanged: (value) {
          _onDigitEntered(value, currentFocus, nextFocus);
        },
      ),
    );
  }
}



