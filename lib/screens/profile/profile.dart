import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    var di=Dimensions(context);
    return Scaffold(
      appBar: AppBar(leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child
          : const Icon(Icons.arrow_back)),),
      body: Padding(
        padding: const EdgeInsets.only(
            left:  24.0,right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Center(
              child: Column(

                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    // backgroundImage: AssetImage('assets/images/png/image.png'),
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
            SizedBox(
              height: Get.height * 0.03,
            ),
            GestureDetector(
              onTap: (){
                Get.back();
              },
              child: Container(
                width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColor.kPrimaryLight),
                  child: Padding(
                    padding: EdgeInsets.all(di.paddingSmall),
                    child:  Center(
                      child: Text(
                        'Friend',
                        style: TxtStyle.small.copyWith(
                          fontSize: 16,
                          color: AppColor.kPrimary,
                        ),
                      
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Text("About",style: TxtStyle.heading,),
            Text("This is Lorem Ipsum text used for dummy purpose for about me section.This is Lorem Ipsum text used for dummy purpose for about me section.",style: TxtStyle.small,),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Text("Interests",style: TxtStyle.small.copyWith(color:
            AppColor.kDarkGrey),),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text("Interests 01",style: TxtStyle.small,),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text("Interests 02",style: TxtStyle.small,),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text("Interests 03",style: TxtStyle.small,),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text("Interests 04",style: TxtStyle.small,),




          ],
        ),
      ),
    );
  }
}