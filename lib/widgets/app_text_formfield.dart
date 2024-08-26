import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';

import '../utils/dimensions.dart';

class  AppTextFormField extends StatelessWidget {

  final TextEditingController controller;
  final FocusNode focusNode;
  // final bool? isLabel;
  final String labelText;
  final String? hintText;
  final int? maxLines;
  final bool obscureText;
  final bool isSelected;
  final bool isPrefix;
  final bool isPrefixSvg;

  final Widget? preFixWidget;
  final String svgPrefixICon;
  final bool isSuffix;
  final Widget?  suffixWidget;

   const AppTextFormField({
    super.key,
    this.hintText,
   required this.controller,
    required this.focusNode,
this.maxLines=1,
    required this.labelText,
    this.obscureText = false,
    required this.isSelected,
     this.isPrefix=false,
     this.preFixWidget,
     this.isPrefixSvg=false,
     this.svgPrefixICon='',
     this.isSuffix=false,
     this.suffixWidget,

  });

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return     Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      height:maxLines==1? 44:80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.kWhite,
        border: Border.all(color:isSelected? AppColor.kPrimary:Colors.transparent),
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
            if(isPrefix)preFixWidget??SizedBox(),
            if(isPrefixSvg)
              SizedBox(
              height: 60,
              child: SvgPicture.asset(
                  svgPrefixICon,
                  height: 24,
                  color:isSelected? AppColor.kPrimary:AppColor.kGrey
              ),
            ),
            SizedBox(
              width: Get.width * 0.02,
            ),
            Expanded(
              child: SizedBox(
                height: 44,

                child: Center(
                  child:  TextFormField(
                    controller: controller,
                    focusNode: focusNode,
                    maxLines: maxLines??1,
                    style: TxtStyle.small.copyWith(color: AppColor.kPrimary,fontWeight: FontWeight.w500),
                   obscureText: obscureText,
                    decoration: InputDecoration(
                      hintText: hintText,
                      labelStyle: TxtStyle.small.copyWith(color: AppColor.kGrey,fontSize: 7),
                      labelText: labelText,
                      // prefix:ispPrefix?preFixWidget:null,
                      // suffix: isSuffix?suffixWidget:null,
                      contentPadding: const EdgeInsets.only(bottom: 0),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        gapPadding: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          if(isSuffix)suffixWidget??const SizedBox(),
            SizedBox(
              width: Get.width * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}

