import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';
import 'package:socialapp/widgets/app_text_formfield.dart';

import '../../utils/app_color.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  TextEditingController? email = TextEditingController();

  FocusNode emailFn = FocusNode();

  RxBool isEmail = false.obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    emailFn.addListener(() {
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
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text(
          "Account Settings",
          style: TxtStyle.heading,
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: dimensions.paddingMedium,
                    right: dimensions.paddingMedium),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    const Text(
                      "Email*",
                      style: TxtStyle.caption,
                    ),
                    SizedBox(
                      height: Get.height * 0.004,
                    ),
                    AppTextFormField(
                      controller: email!,
                      focusNode: FocusNode(),
                      labelText: 'xyz@gmail.com',
                      isSelected: isEmail.value,
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    const Text(
                      "Password*",
                      style: TxtStyle.caption,
                    ),
                    SizedBox(
                      height: Get.height * 0.004,
                    ),
                    AppTextFormField(
                      controller: email!,
                      enabled: false,
                      focusNode: FocusNode(),
                      labelText: '*********',
                      isSuffix: true,
                      suffixWidget: GestureDetector(
                          onTap: (){
                            Get.toNamed(AppRoutes.changePassword);
                          },
                          child: SvgPicture.asset(AppImage.edit)),
                      isSelected: false,
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    const Text(
                      "Phone Number*",
                      style: TxtStyle.caption,
                    ),
                    SizedBox(
                      height: Get.height * 0.004,
                    ),
                    AppTextFormField(
                      controller: email!,
                      enabled: false,
                      focusNode: FocusNode(),
                      labelText: '0345******',
                      isSelected: false,
                      isSuffix: true,
                      suffixWidget: SvgPicture.asset(AppImage.edit),
                    ),
                    SizedBox(
                      height: Get.height * 0.004,
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {},
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
                            "Create Event",
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
      ),
    );
  }
}
