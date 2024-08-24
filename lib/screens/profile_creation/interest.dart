import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';

class Interest extends StatefulWidget {
 const Interest({super.key});

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  RxBool isSwitch=false.obs;
  RxList<String> interest=<String>['Fitness','Nutrition','Mental Health','Supplements'].obs;
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
              SizedBox(height: Get.height*0.01,),
              Text("Add Your Interests",style: TxtStyle.heading.copyWith(fontWeight: FontWeight.w500),),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(dimensions.paddingLarge),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("This is lorem ipsum text for heading text.",style: TxtStyle.heading.copyWith(fontWeight: FontWeight.w500)),
                      Text("Choose up to three.",style: TxtStyle.small),
                      SizedBox(height: Get.height*0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColor.kPrimary,
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xff888BF4),
                                      Color(0xff5151C6),

                                    ]),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding:  EdgeInsets.all(dimensions.paddingLarge),
                              child: Row(
                                mainAxisSize :MainAxisSize.min,
                                children: [
                                  Text('- ',style: TxtStyle.caption.copyWith(color: AppColor.kWhite),)   ,                           Text(interest[0],style: TxtStyle.caption.copyWith(color: AppColor.kWhite),)
                                ],),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColor.kGrey),

                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding:  EdgeInsets.all(dimensions.paddingLarge),
                              child: Row(
                                mainAxisSize :MainAxisSize.min,
                                children: [
                                  Text('+ ',style: TxtStyle.caption.copyWith(color: AppColor.kGrey),)   ,
                                  Text(interest[1],style: TxtStyle.caption,)
                                ],),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColor.kGrey),

                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: dimensions.paddingSmall ,vertical:  dimensions.paddingLarge),
                              child: Row(
                                mainAxisSize :MainAxisSize.min,
                                children: [
                                  Text('+ ',style: TxtStyle.caption.copyWith(color: AppColor.kGrey),)   ,
                                  Text(interest[2],style: TxtStyle.caption,)
                                ],),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height*0.02,),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColor.kGrey),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: dimensions.paddingSmall ,vertical:  dimensions.paddingLarge),
                          child: Row(
                            mainAxisSize :MainAxisSize.min,
                            children: [
                              Text('+ ',style: TxtStyle.caption.copyWith(color: AppColor.kGrey),)   ,
                              Text(interest[3],style: TxtStyle.caption,)
                            ],),
                        ),
                      ),
                      const Spacer(),
                      Center(
                        child: GestureDetector(
                          onTap: (){
                            Get.toNamed(AppRoutes.looking);
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
                      SizedBox(height: Get.height*0.02,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
