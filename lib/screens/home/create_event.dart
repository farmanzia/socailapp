import 'package:flutter/material.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/screens/base_scaffold.dart';

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';
import 'package:socialapp/widgets/app_text_formfield.dart';

class CreateEvent extends StatefulWidget {
  CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  TextEditingController? eventName = TextEditingController();
  TextEditingController? eventType = TextEditingController();
  TextEditingController? fromDate = TextEditingController();
  TextEditingController? toDate = TextEditingController();
  TextEditingController? startTime = TextEditingController();
  TextEditingController? endTime = TextEditingController();
  TextEditingController? location = TextEditingController();
  TextEditingController? capacity = TextEditingController();
  TextEditingController? desc = TextEditingController();
  FocusNode eventNameFn = FocusNode();
  FocusNode eventTypeFn = FocusNode();
  FocusNode fromDateFn = FocusNode();
  FocusNode toDateFn = FocusNode();
  FocusNode startTimeFn = FocusNode();
  FocusNode endTimeFn = FocusNode();
  FocusNode locationFn = FocusNode();
  FocusNode capacityFn = FocusNode();
  FocusNode descFn = FocusNode();

  RxBool iEventName = false.obs;
  RxBool isEventType = false.obs;
  RxBool isFromDate = false.obs;
  RxBool isToDate = false.obs;
  RxBool isStartTime = false.obs;
  RxBool isEndTime = false.obs;
  RxBool isLocation = false.obs;
  RxBool isCapacity = false.obs;
  RxBool isDesc = false.obs;

  @override
  void initState() {
    super.initState();

    eventNameFn.addListener(() {
      log("==== listener added");
      if (eventNameFn.hasFocus) {
        iEventName.value = true;
      } else {
        iEventName.value = false;
      }
    });
    eventTypeFn.addListener(() {
      if (eventTypeFn.hasFocus) {
        isEventType.value = true;
      } else {
        isEventType.value = false;
      }
    });
    fromDateFn.addListener(() {
      if (fromDateFn.hasFocus) {
        isFromDate.value = true;
      } else {
        isFromDate.value = false;
      }
    });
    toDateFn.addListener(() {
      log("==== listener added");
      if (toDateFn.hasFocus) {
        isToDate.value= true;
      } else {
        isToDate.value = false;
      }
    });
    startTimeFn.addListener(() {
      log("==== listener added");

      if (startTimeFn.hasFocus) {
        isStartTime.value = true;
      } else {
        isStartTime.value = false;
      }
    });
    endTimeFn.addListener(() {
      log("==== listener added");

      if (endTimeFn.hasFocus) {
        isEndTime.value = true;
      } else {
        isEndTime.value = false;
      }
    });
    locationFn.addListener(() {
      log("==== listener added");

      if (locationFn.hasFocus) {
        isLocation.value = true;
      } else {
        isLocation.value = false;
      }
    });
    capacityFn.addListener(() {
      log("==== listener added");

      if (capacityFn.hasFocus) {
        isCapacity.value = true;
      } else {
        isCapacity.value = false;
      }
    });
    descFn.addListener(() {
      log("==== listener added");

      if (descFn.hasFocus) {
       isDesc.value = true;
      } else {
        isDesc.value = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);
    return BaseScaffold(
      appBar: AppBar(
        forceMaterialTransparency:true,
        leading: IconButton(icon:
          const Icon(Icons.arrow_back),onPressed: (){
          Get.back();
        },),
        title:
      const Text(
        "Create Event",
        style: TxtStyle.heading,
      ),
      centerTitle: true,),
      body: Obx(
            () => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: dimensions.paddingMedium, right: dimensions.paddingMedium),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    const Text(
                      "Upload Photo*",
                      style: TxtStyle.caption,
                    ),
                    SizedBox(
                      height: Get.height * 0.004,
                    ),
                    AppTextFormField(
                      controller:TextEditingController(),
                      focusNode: FocusNode(),
                      labelText: 'Image_1223',
                      isSelected: isLocation.value,
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                       children: [   const Text(
                            "Event Name*",
                            style: TxtStyle.caption,
                          ),
                          SizedBox(
                            height: Get.height * 0.004,
                          ),
                          AppTextFormField(
                            controller: eventName!,
                            focusNode: eventNameFn,
                            labelText: 'Event Name',
                            isSelected: isEventType.value,
                          ),]
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [   const Text(
                              "Event Type*",
                              style: TxtStyle.caption,
                            ),
                              SizedBox(
                                height: Get.height * 0.004,
                              ),
                              AppTextFormField(
                                controller: eventType!,
                                focusNode: eventTypeFn,
                                labelText: 'Event type',
                                isSelected: isEventType.value,
                              ),]
                        ),
                      ),
                    ],),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(children: [
                      Expanded(
                        child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [   const Text(
                              "From Date*",
                              style: TxtStyle.caption,
                            ),
                              SizedBox(
                                height: Get.height * 0.004,
                              ),
                              AppTextFormField(
                                controller: fromDate!,
                                focusNode: fromDateFn,
                                labelText: 'Date',
                                isSelected: isFromDate.value,
                              ),]
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [   const Text(
                              "To Date*",
                              style: TxtStyle.caption,
                            ),
                              SizedBox(
                                height: Get.height * 0.004,
                              ),
                              AppTextFormField(
                                controller: toDate!,
                                focusNode: toDateFn,
                                labelText: 'Date',
                                isSelected: isToDate.value,
                              ),]
                        ),
                      ),
                    ],),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(children: [
                      Expanded(
                        child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [   const Text(
                              "Start Time*",
                              style: TxtStyle.caption,
                            ),
                              SizedBox(
                                height: Get.height * 0.004,
                              ),
                              AppTextFormField(
                                controller: startTime!,
                                focusNode: startTimeFn,
                                labelText: 'Time',
                                isSelected: isStartTime.value,
                              ),]
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [   const Text(
                              "End Time*",
                              style: TxtStyle.caption,
                            ),
                              SizedBox(
                                height: Get.height * 0.004,
                              ),
                              AppTextFormField(
                                controller: endTime!,
                                focusNode: endTimeFn,
                                labelText: 'Time',
                                isSelected: isEndTime.value,
                              ),]
                        ),
                      ),
                    ],),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(children: [
                      Expanded(
                        child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [   const Text(
                              "Location*",
                              style: TxtStyle.caption,
                            ),
                              SizedBox(
                                height: Get.height * 0.004,
                              ),
                              AppTextFormField(
                                controller: location!,
                                focusNode: locationFn,
                                labelText: 'Location',
                                isSelected: isLocation.value,
                              ),]
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [   const Text(
                              "Capacity",
                              style: TxtStyle.caption,
                            ),
                              SizedBox(
                                height: Get.height * 0.004,
                              ),
                              AppTextFormField(
                                controller: capacity!,
                                focusNode: capacityFn,
                                labelText: 'Capacity',
                                isSelected: isCapacity.value,
                              ),]
                        ),
                      ),
                    ],),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    const Text(
                      "Event Description*",
                      style: TxtStyle.caption,
                    ),
                    SizedBox(
                      height: Get.height * 0.004,
                    ),
                    AppTextFormField(
                      controller: desc!,
                      focusNode: descFn,
                      labelText: 'Description',
                      isSelected: isDesc.value,
                      maxLines: 4,
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                         Get.back();
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
                                "Create Event",
                                style: TxtStyle.body.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: AppColor.kWhite),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}