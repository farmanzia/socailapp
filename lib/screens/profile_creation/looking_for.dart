import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';

class LookingScreen extends StatefulWidget {
  const LookingScreen({super.key});

  @override
  State<LookingScreen> createState() => _LookingScreenState();
}

class _LookingScreenState extends State<LookingScreen> {
  RxBool isSwitch = false.obs;
  RxList<String> lookingList = <String>[
    'Looking for New Friends',
    'Want to Learn Together',
    'Join Me in Activities',
    'Share Hobbies with Me',
    'Need a Helping Hand',
    'Seeking Community Connections',
    'Looking for Companionship',
    'Socialize and Connect',
    "Help Me, I'll Help You",
  ].obs;
  RxInt selectedIndex=0.obs;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return BaseScaffold(
        body:  Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.08,
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Text(
                      "What I Am Looking For",
                      style: TxtStyle.heading.copyWith(fontWeight: FontWeight.w500),
                    ),
                    Expanded(
                      child: Padding(
        padding: EdgeInsets.all(dimensions.paddingLarge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: ListView.builder(
              padding: EdgeInsets.zero,
                itemCount:lookingList.length,
                itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  selectedIndex.value=index;
                  log("===== selectedIndex ${selectedIndex.value}");
                },
                child: Padding(
                  padding:  EdgeInsets.only(bottom: dimensions.paddingSmall),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    // height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      border: Border.all(color:AppColor.kGrey),
                      borderRadius: BorderRadius.circular(dimensions.borderRadius),
                      boxShadow: [
                        BoxShadow(
                            color: AppColor.shadowColor,
                            blurRadius: 5,
                            spreadRadius: 0,
                            offset: const Offset(1, 1))
                      ],
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: dimensions.paddingMedium,
                      horizontal: dimensions.paddingSmall
                      ),
                      child: Row(
                        children: [
                          Text(lookingList[index]),
                          Spacer(),        Obx(
                      ()=> Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color:
                                selectedIndex.value==index?AppColor.kPrimary : AppColor.kGrey),

                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: CircleAvatar(
                                  radius: 8,
                                  backgroundColor:selectedIndex.value==index?AppColor.kPrimary : Colors.transparent,),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            })),

            // const Spacer(),
            Center(
              child: GestureDetector(
                onTap: () {
                   Get.toNamed(AppRoutes.addPeople);
                },
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
                    "Next",
                    style: TxtStyle.body.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: AppColor.kWhite),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
          ],
        ),
                      ),
                    ),
                  ],
        )
        );
  }
}
