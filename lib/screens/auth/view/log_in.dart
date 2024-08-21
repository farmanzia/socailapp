import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';
import 'package:socialapp/widgets/app_text_formfield.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);

    return BaseScaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height*0.315,
              child: Stack(
                    children: [
              Positioned(
                  right: 0,
                  child: SvgPicture.asset(
                    AppImage.lightBgVector,
                    height: double.infinity,
                  )),
              Positioned(
                  right: 0,
                  child: SvgPicture.asset(
                    AppImage.darkBgVector,
                    height: double.infinity,
                  )),

                    ],
                  ),
            ),
            Padding(
              padding:  EdgeInsets.only(left:  dimensions.paddingXL,right:  dimensions.paddingXL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login",style: TxtStyle.heading.copyWith(
                    fontSize: 25,
                    color: AppColor.kPrimary,
                    fontWeight: FontWeight.w700
                  ),),
                  Text("Please sign in to continue",style: TxtStyle.small.copyWith(

                  ),),
                  SizedBox(height: Get.height*0.1,)
,
                  Container(
                    // height: 300,
                    color: Colors.white,
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.mail),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top:  8.0),
                            child: AppTextFormField(
                              hintText: 'Enter your email',
                              prefixIcon: Icons.email,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            )
          ],
        ));
  }
}
