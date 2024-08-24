import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';

class Permission extends StatefulWidget {
  Permission({super.key});

  @override
  State<Permission> createState() => _PermissionState();
}

class _PermissionState extends State<Permission> {
  RxBool isSwitch=false.obs;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return BaseScaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: Get.height*0.08,),
              SvgPicture.asset(AppImage.permission),
              SizedBox(height: Get.height*0.01,),
              const Text("Profile Creation",style: TxtStyle.heading,),
              SizedBox(height: Get.height*0.025,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  SvgPicture.asset(AppImage.location,height: 35,width: 35,),
                  SizedBox(width: Get.height*0.01,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                      Text('Live Location',style: TxtStyle.caption.copyWith(fontWeight: FontWeight.w600),),
                        SizedBox(width: Get.height*0.01,),
                        Text('This is lorem ipsum text for dummy purpose ',style: TxtStyle.caption.copyWith(fontWeight: FontWeight.w500),)
                    ],),
                  ),
                  Obx(()=>
                      Transform.scale(
                        scale: 0.4,
                        child: FlutterSwitch(
                          switchBorder:isSwitch.value?Border.all(
                            color: AppColor.kPrimary,
                            width: 2.0,
                          ):
                          Border.all(
                              color: Colors.grey,
                              width: 2.0),
                          width: 100.0,
                          inactiveToggleColor: Colors.grey,
                          activeToggleColor: AppColor.kPrimary,
                          inactiveColor: AppColor.kPrimary,
                          activeColor: AppColor.kPrimary,
                          height: 55.0,
                          toggleSize: 45.0,
                          value: isSwitch.value,
                          borderRadius: 30.0,
                          padding: 8.0,
                          showOnOff: false,
                          onToggle: (val) {
                            setState(() {
                              isSwitch.value = val;
                            });
                          },
                        ),


                      )
                  ),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  SvgPicture.asset(AppImage.contact,height: 35,width: 35,),
                  SizedBox(width: Get.height*0.01,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                      Text('User Contacts',style: TxtStyle.caption.copyWith(fontWeight: FontWeight.w600),),
                        SizedBox(width: Get.height*0.01,),
                        Text('This is lorem ipsum text for dummy purpose ',style: TxtStyle.caption.copyWith(fontWeight: FontWeight.w500),)
                    ],),
                  ),
                  Obx(()=>
                      Transform.scale(
                        scale: 0.4,
                        child: FlutterSwitch(
                          switchBorder:isSwitch.value?Border.all(
                            color: AppColor.kPrimary,
                            width: 2.0,
                          ):
                          Border.all(
                              color: Colors.grey,
                              width: 2.0),
                          width: 100.0,
                          inactiveToggleColor: Colors.grey,
                          activeToggleColor: AppColor.kPrimary,
                          inactiveColor: AppColor.kPrimary,
                          activeColor: AppColor.kPrimary,
                          height: 55.0,
                          toggleSize: 45.0,
                          value: isSwitch.value,
                          borderRadius: 30.0,
                          padding: 8.0,
                          showOnOff: false,
                          onToggle: (val) {
                            setState(() {
                              isSwitch.value = val;
                            });
                          },
                        ),


                      )
                  ),
                ],),
              ),
             const Spacer(),
              Center(
                child: GestureDetector(
                  onTap: (){
                     Get.toNamed(AppRoutes.interest);
                  },
                  child: Container(
                    height: 40,
                    width:  Get.width*0.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(dimensions.borderRadiusLarge),
                        gradient: const LinearGradient(colors: AppColor.gradientColor)
                    ),
                    child: Center(child: Text("Next",style: TxtStyle.body.copyWith( fontWeight: FontWeight.w700, fontSize: 15,color: AppColor.kWhite),)),
                  ),
                ),
              ),
              SizedBox(height: Get.height*0.04,),
               ],
          ),
        ));
  }
}
