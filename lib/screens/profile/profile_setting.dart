import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/utils/app_style.dart';
class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Profile Setting',style: TxtStyle.heading,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.person_add_alt_1_rounded,size: 30,),
                SizedBox(width: 10,),
                Text("Account",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.person,size: 30,),
                SizedBox(width: 10,),
                Text("Edit Profile",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.g_translate_outlined,size: 30,),
                SizedBox(width: 10,),
                Text("Language",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.headset_mic_outlined,size: 30,),
                SizedBox(width: 10,),
                Text("Group",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.person_add_alt_outlined,size: 30,),
                SizedBox(width: 10,),
                Text("Follow & Invite Friends ",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.notifications,size: 30,),
                SizedBox(width: 10,),
                Text("Notification",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.privacy_tip,size: 30,),
                SizedBox(width: 10,),
                Text("Privacy",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.security,size: 30,),
                SizedBox(width: 10,),
                Text("Security",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.help,size: 30,),
                SizedBox(width: 10,),
                Text("Help",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 15,
            ),Row(
              children: [
                Icon(Icons.error,size: 30,),
                SizedBox(width: 10,),
                Text("About",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(onPressed: (){
              // Get.toNamed(AppRoutes.groupScreen);
            }, child: Text('next screen',style: TxtStyle.heading,))
          ],
        ),
      ),
    );
  }
}