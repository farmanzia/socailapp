import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/screens/home/groupTab/all.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/widgets/AppDrawer.dart';

class Groups extends StatefulWidget {
  Groups({super.key});

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  RxInt selectedIndex = 0.obs;

  RxList<String> list = <String>["All", "My Groups", "Others"].obs;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final RxList<Widget> _pages = <Widget>[
    const AllGroups(),
    const Center(
      child: Text("Live"),
    ),
    const Center(
      child: Text("Live"),
    ),

  ].obs;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        key: _scaffoldKey,
        drawer: const AppDrawer(),
        appBar: AppBar(
          forceMaterialTransparency: true,
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
            "Groups",
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
        body: Obx(() => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Row(
                    children: List.generate(
                        list.length,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: GestureDetector(
                                onTap: () {
                                  selectedIndex.value = index;
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      list[index].toString(),
                                      style: TxtStyle.small.copyWith(
                                        fontSize: 18,
                                          fontWeight: selectedIndex.value == index? FontWeight.w600:FontWeight.w400,
                                          color: selectedIndex.value == index
                                              ? AppColor.kPrimary
                                              : AppColor.kGrey),
                                    ),

                                  ],
                                ),
                              ),
                            ))),
                Expanded(child: _pages[selectedIndex.value])
              ],
            ),
        ),
        ));
  }
}
