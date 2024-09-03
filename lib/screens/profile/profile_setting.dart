import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';
import 'package:socialapp/widgets/drawerWidget.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  @override
  Widget build(BuildContext context) {
    var di = Dimensions(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Profile Setting',
          style: TxtStyle.heading,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            DrawerWidget(
              assetName: AppImage.follow,
              color: AppColor.kDarkGrey,
              data: "Account",
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.account);
              },
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            DrawerWidget(
              assetName: AppImage.profile,
              color: AppColor.kDarkGrey,
              data: "Edit Profile",
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.editProfile);
              },
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            DrawerWidget(
              assetName: AppImage.language,
              color: AppColor.kDarkGrey,
              data: "Language",
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.profileSetting);
              },
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            DrawerWidget(
              assetName: AppImage.group,
              color: AppColor.kDarkGrey,
              data: "Groups",
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.profileSetting);
              },
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            DrawerWidget(
              assetName: AppImage.follow,
              color: AppColor.kDarkGrey,
              data: "Follow & Invite Friends",
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.profileSetting);
              },
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            DrawerWidget(
              assetName: AppImage.notification,
              color: AppColor.kDarkGrey,
              data: "Notification",
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.profileSetting);
              },
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            DrawerWidget(
              assetName: AppImage.privacy,
              color: AppColor.kDarkGrey,
              data: "Privacy",
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.profileSetting);
              },
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            DrawerWidget(
              assetName: AppImage.security,
              color: AppColor.kDarkGrey,
              data: "Security",
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.profileSetting);
              },
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            DrawerWidget(
              assetName: AppImage.help,
              color: AppColor.kDarkGrey,
              data: "Help",
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.profileSetting);
              },
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            DrawerWidget(
              assetName: AppImage.about,
              color: AppColor.kDarkGrey,
              data: "About",
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.profileSetting);
              },
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
