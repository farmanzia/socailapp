import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/utils/app_style.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/png/cros.png', height: 20, width: 20,),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/png/group.png', height: 70, width: 70,),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Text('CONNECT APP', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),),
                    Text('This is lorem ipsum tagline line purpose', style: TxtStyle.small,),
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.settings, color: Colors.deepPurple, size: 33,),
                SizedBox(width: 10,),
                Expanded(
                  child: Text("Profile Setting", style: TxtStyle.small,),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.ios_share, color: Colors.deepPurple, size: 33,),
                SizedBox(width: 10,),
                Expanded(
                  child: Text("Share", style: TxtStyle.small,),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.feedback, color: Colors.deepPurple, size: 33,),
                SizedBox(width: 10,),
                Expanded(
                  child: Text("Feedback", style: TxtStyle.small,),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.privacy_tip, color: Colors.deepPurple, size: 33,),
                SizedBox(width: 10,),
                Expanded(
                  child: Text("Privacy", style: TxtStyle.small,),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/images/svg/more.svg",
                  color: Colors.deepPurple,
                  height: Get.height*0.04,
                  width: Get.width*0.04,
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Text("More App", style: TxtStyle.small,),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/images/svg/terms.svg",
                  color: Colors.deepPurple,
                  height: Get.height*0.04,
                  width: Get.width*0.04,
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Text("Terms & Condition", style: TxtStyle.small,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
