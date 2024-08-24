import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/utils/app_style.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Center(
                child: Column(

                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('assets/images/png/image.png'),
                      radius: 50,
                    ),
                    Text('User Name',style: TxtStyle.heading,),
                    SizedBox(
                      height: 10,
                    ),
                    Text('City,Country',style: TextStyle(fontSize: 14,color: Colors.grey),),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("About",style: TxtStyle.heading,),
            Text("This is Lorem Ipsum text used for dummy purpose for about me section.This is Lorem Ipsum text used for dummy purpose for about me section.",style: TxtStyle.small,),
            SizedBox(
              height: 30,
            ),
            Text("Interests",style: TxtStyle.heading,),
            SizedBox(
              height: 15,
            ),
            Text("Interests 01",style: TxtStyle.small,),
            SizedBox(
              height: 15,
            ),
            Text("Interests 02",style: TxtStyle.small,),
            SizedBox(
              height: 15,
            ),
            Text("Interests 03",style: TxtStyle.small,),
            SizedBox(
              height: 15,
            ),
            Text("Interests 04",style: TxtStyle.small,),

            SizedBox(height: 50,),

            TextButton(onPressed: (){
              Get.toNamed(AppRoutes.profileSetting);
            }, child: Text('next',style: TxtStyle.heading,))


          ],
        ),
      ),
    );
  }
}