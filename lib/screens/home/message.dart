import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';

import '../../utils/app_style.dart';
import '../../utils/dimensions.dart';

class Message extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  final List<ChatModel> messages = [
    ChatModel(
        text:
            "This is your delivery driver from Speedy Chow. I'm just around the corner from your place. 😊",
        isSender: false,
        time: "10:23"),
    ChatModel(text: "Hello!", isSender: true, time: "10:23"),
    ChatModel(
        text:
            "Awesome, thanks for letting me know! Can't wait for my delivery. 🎉",
        isSender: true,
        time: "10:23"),
    ChatModel(
        text: "No problem at all! I'll be there in about 15 minutes.",
        isSender: false,
        time: "10:23"),
    ChatModel(
        text: "I'll text you when I arrive.", isSender: false, time: "10:23"),
    ChatModel(text: "IGreat! 😊", isSender: true, time: "10:23"),
  ];

  @override
  Widget build(BuildContext context) {
    var di = Dimensions(context);
    return BaseScaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColor.kDarkGrey,
            ),
          ),
          title: const Text(
            "Chats",
            style: TxtStyle.heading,
          ),
          centerTitle: true,
          actions: [
            SvgPicture.asset(AppImage.menuDots),
            SizedBox(
              width: Get.width * 0.04,
            )
          ],
          forceMaterialTransparency: true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: Get.width * 0.02,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: AppColor.lightBlue,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                        AppImage.userAvatar,
                      ))),
                ),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User name",
                      style: TxtStyle.caption.copyWith(fontSize: 16),
                    ),
                    Text("xyz@gmail.com",
                        style: TxtStyle.caption.copyWith(fontSize: 14))
                  ],
                )),
                SvgPicture.asset(AppImage.phone),
                SizedBox(
                  width: Get.width * 0.02,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final isLongMessage =
                    message.text.length > 40; // Adjust based on your needs
                return Padding(
                  padding: EdgeInsets.only(
                      left: message.isSender ? 20 : 0,
                      right: message.isSender ? 0 : 20),
                  child: Wrap(
                    alignment: message.isSender
                        ? WrapAlignment.end
                        : WrapAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: message.isSender? MainAxisAlignment.end:MainAxisAlignment.start ,
                    children: [
                      Container(
                        // width: isLongMessage ? Get.width * 0.75 : Get.width * 0.8,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                          color: message.isSender
                              ? const Color(0xFF5151C6)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 0.15,
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              message.text,
                              style: TextStyle(
                                fontSize: 14,
                                color: message.isSender
                                    ? Colors.white
                                    : const Color(0xff2C2D3A),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              message.time,
                              style: TextStyle(
                                fontSize: 12,
                                color: message.isSender
                                    ? Colors.white70
                                    : Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
              padding: EdgeInsets.only(bottom: di.paddingMedium),
              decoration: BoxDecoration(
                  color: AppColor.kWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, -5), // Move shadow upwards
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions(context).borderRadius),
                    topRight: Radius.circular(Dimensions(context).borderRadius),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: di.paddingMedium),
                child: Row(
                  children: [
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                              barrierColor: Colors.transparent,
                              Container(
                                  margin: EdgeInsets.only(
                                      bottom: Get.height * 0.1,
                                      left: Get.height * 0.02,
                                      right: Get.height * 0.02),
                                  // height: Get.height * 0.35,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                      color: AppColor.kWhite,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 10,
                                          offset: const Offset(
                                              0, -5), // Move shadow upwards
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(
                                          Dimensions(context).borderRadius)),
                                  child: Column(

                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                      SizedBox(height: Get.height*0.03,),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Container(
                                                  decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      gradient: LinearGradient(
                                                          colors: AppColor
                                                              .gradientColor)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                        AppImage.Camera),
                                                  )),
                                              SizedBox(
                                                height: Get.height * 0.01,
                                              ),
                                              Text(
                                                "Camera",
                                                style: TxtStyle.caption
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w700),
                                              )
                                            ],
                                          )),
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Container(
                                                  decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      gradient: LinearGradient(
                                                          colors: AppColor
                                                              .gradientColor)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                        AppImage.Microphone),
                                                  )),
                                              SizedBox(
                                                height: Get.height * 0.01,
                                              ),
                                              Text(
                                                "Record",
                                                style: TxtStyle.caption
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w700),
                                              )
                                            ],
                                          )),
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Container(
                                                  decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      gradient: LinearGradient(
                                                          colors: AppColor
                                                              .gradientColor)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                      AppImage.profile,
                                                      color: Colors.white,
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: Get.height * 0.01,
                                              ),
                                              Text(
                                                "Contact",
                                                style: TxtStyle.caption
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w700),
                                              )
                                            ],
                                          )),
                                        ],
                                      ),
                                      SizedBox(height: Get.height*0.03,),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Container(
                                                  decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      gradient: LinearGradient(
                                                          colors: AppColor
                                                              .gradientColor)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                        AppImage.Gallery),
                                                  )),
                                              SizedBox(
                                                height: Get.height * 0.01,
                                              ),
                                              Text(
                                                "Gallery",
                                                style: TxtStyle.caption
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w700),
                                              )
                                            ],
                                          )),
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Container(
                                                  decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      gradient: LinearGradient(
                                                          colors: AppColor
                                                              .gradientColor)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                        AppImage.location2),
                                                  )),
                                              SizedBox(
                                                height: Get.height * 0.01,
                                              ),
                                              Text(
                                                "My Location",
                                                style: TxtStyle.caption
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w700),
                                              )
                                            ],
                                          )),
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Container(
                                                  decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      gradient: LinearGradient(
                                                          colors: AppColor
                                                              .gradientColor)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                      AppImage.doc,
                                                      color: Colors.white,
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: Get.height * 0.01,
                                              ),
                                              Text(
                                                "Document",
                                                style: TxtStyle.caption
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w700),
                                              )
                                            ],
                                          )),
                                        ],
                                      ),
                                      SizedBox(height: Get.height*0.03,),
                                    ],
                                  )));
                        },
                        child: const Icon(
                          Icons.add,
                          color: AppColor.kPrimary,
                          size: 32,
                        )),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Expanded(
                        child: TextFormField(
                      controller: controller,
                      style: TxtStyle.small.copyWith(
                          fontSize: 16,
                          color: AppColor.kPrimary,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        hintText: 'Type a message ...',
                        filled: true,
                        fillColor: AppColor.fieldColor,
                        contentPadding:
                            const EdgeInsets.only(left: 12, bottom: 0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(di.borderRadius),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(di.borderRadius),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          gapPadding: 0,
                        ),
                      ),
                    )),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient:
                                LinearGradient(colors: AppColor.gradientColor)),
                        child: Center(child: SvgPicture.asset(AppImage.send)),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class ChatModel {
  final String text;
  final bool isSender;
  final String time;

  ChatModel({required this.text, required this.isSender, required this.time});
}
