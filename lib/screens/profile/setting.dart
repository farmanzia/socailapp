import 'package:flutter/material.dart';
import 'package:socialapp/utils/app_style.dart';
class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Container(
          child: Image.asset('assets/images/png/Group.png',height: 20,width: 20,),
        ),

        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/png/group2.png',height: 50,width: 50,),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Text('CONNECT APP',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue),),

                    Text('This is lorem ipsum tagline line purpose',style: TxtStyle.small,),
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.settings,color: Colors.deepPurple,size: 30,),
                SizedBox(width: 10,),
                Text("Profile Setting",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.ios_share,color: Colors.deepPurple,size: 30),
                SizedBox(width: 10,),
                Text("Share",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.feedback,color: Colors.deepPurple,size: 30),
                SizedBox(width: 10,),
                Text("Feedback",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.privacy_tip,color: Colors.deepPurple,size: 30,),
                SizedBox(width: 10,),
                Text("Privacy",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.more,color: Colors.deepPurple,size: 30,),
                SizedBox(width: 10,),
                Text("More App ",style: TxtStyle.small,),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.storage,color: Colors.deepPurple,size: 30,),
                SizedBox(width: 10,),
                Text("Terms & Condition",style: TxtStyle.small,),
              ],
            ),
            // SizedBox(
            //   height: 15,
            // ),
            // Row(
            //   children: [
            //     Icon(Icons.privacy_tip),
            //     SizedBox(width: 10,),
            //     Text("Privacy",style: TxtStyle.small,),
            //   ],
            // ),
            // SizedBox(
            //   height: 15,
            // ),
            // Row(
            //   children: [
            //     Icon(Icons.security),
            //     SizedBox(width: 10,),
            //     Text("Security",style: TxtStyle.small,),
            //   ],
            // ),
            // SizedBox(
            //   height: 15,
            // ),
            // Row(
            //   children: [
            //     Icon(Icons.help),
            //     SizedBox(width: 10,),
            //     Text("Help",style: TxtStyle.small,),
            //   ],
            // ),
            // SizedBox(
            //   height: 15,
            // ),Row(
            //   children: [
            //     Icon(Icons.error),
            //     SizedBox(width: 10,),
            //     Text("About",style: TxtStyle.small,),
            //   ],
            // ),
            // SizedBox(
            //   height: 15,
            // ),

          ],
        ),
      ),
    );
  }
}