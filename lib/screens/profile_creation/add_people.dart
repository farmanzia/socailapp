

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';

class AddPeople extends StatefulWidget {
  const AddPeople({super.key});

  @override
  State<AddPeople> createState() => _AddPeopleState();
}

class _AddPeopleState extends State<AddPeople> {
  RxBool isSwitch = false.obs;

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
              "Add People",
              style: TxtStyle.heading.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:  dimensions.paddingLarge),
                child: Column(
                  children: [
                    Expanded(
                        child:
                    GridView.builder(
                shrinkWrap:true,
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index){
                      return Padding(
                        padding:  EdgeInsets.all(dimensions.paddingSmall),
                        child: Container(        padding: const EdgeInsets.symmetric(vertical: 0.0),
                          height: 44,
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
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Image.asset(AppImage.personAvatar,height: 60,),
                            SizedBox(height: Get.height*0.008,),
                              Text("Person Name",style: TxtStyle.caption.copyWith(fontSize: 13),),
                              SizedBox(height: Get.height*0.008,),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: AppColor.kPurpleLight,
                              child: Center(child: Icon(Icons.add,size: 12,)),
                              )
                            ],),
                        ),
                        ),
                      );
                    })),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                           Get.toNamed(AppRoutes.landing);
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
                                "Finish",
                                style: TxtStyle.body.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: AppColor.kWhite),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
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
