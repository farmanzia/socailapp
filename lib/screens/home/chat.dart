import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/routes/app_routes.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/widgets/AppDrawer.dart';

import '../../utils/app_images.dart';

class Chat extends StatelessWidget {
   Chat({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        key: _scaffoldKey,
        drawer: const AppDrawer(),
        appBar: AppBar(
          forceMaterialTransparency:true,
          leading: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState
                  ?.openDrawer(); // Use the key to open the drawer
            },
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: SvgPicture.asset(
                AppImage.menu,
                height: 12,
                width: 12,
              ),
            ),
          ),
          title: const Text(
            "Chats",
            style: TxtStyle.heading,
          ),
          centerTitle: true,
          actions: [
            const CircleAvatar(
              backgroundColor: Color(0xfff6F7F9),
              child: Icon(Icons.add),
            ),
            SizedBox(
              width: Get.width * 0.05,
            ),
          ],
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Get.toNamed(AppRoutes.message);
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
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
                      SizedBox(width: Get.width*0.02,),
                      Expanded(
                          child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "User name",
                                style: TxtStyle.small,
                              )),
                              Text("6 day ago",
                                  style: TxtStyle.small.copyWith(fontSize: 10))
                            ],
                          ),
                          SizedBox(height: Get.height*0.01,),
                          const Text(
                            "This is lorem ipsum text used for dummy This is lorem ipsum text used for dummy...",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.5,
                )
              ],
            ),
          );
        }));
  }
}
