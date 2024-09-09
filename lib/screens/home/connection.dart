import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';
import 'package:socialapp/widgets/AppDrawer.dart';

class Connection extends StatefulWidget {
  const Connection({super.key});

  @override
  State<Connection> createState() => _ConnectionState();
}

class _ConnectionState extends State<Connection>
    with SingleTickerProviderStateMixin {
  TextEditingController controller=TextEditingController();
  TabController? tabController;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions(context);

    return Scaffold(
        key: _scaffoldKey,
        drawer: const AppDrawer(),
        appBar: AppBar(
          forceMaterialTransparency:true,
          leading:  GestureDetector(
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
          actions: [
            SvgPicture.asset(AppImage.alert),
            SizedBox(
              width: Get.width * 0.02,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  color: AppColor.lightBlue,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        AppImage.userAvatar,
                      ))),
            ),
            SizedBox(
              width: Get.width * 0.05,
            ),
          ],
        ),
        body:
        Padding(
      padding: EdgeInsets.all(dimensions.paddingMedium),
      child: Column(children: [
        SizedBox(
          height: Get.height * 0.01,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: dimensions.paddingSmall),
          child: Container(
            // height: Get.height * 0.06,
            width: Get.width* 0.8,
            decoration: BoxDecoration(
              color: AppColor.kPrimaryLight,
              borderRadius: BorderRadius.circular(
                50.0,
              ),
            ),
            child: TabBar(
              padding: EdgeInsets.zero,
              dividerColor: Colors.transparent,
              controller: tabController,
              labelPadding:EdgeInsets.zero,
              // indicatorColor: Colors.red,
              indicatorWeight: 0, // Set the indicator weight to zero
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  50.0,
                ),
                color: AppColor.kPrimary,
              ),

              splashBorderRadius: BorderRadius.circular(
                50.0,
              ),
              unselectedLabelColor: AppColor.kPrimary,
              labelColor: Colors.white,
              labelStyle: TxtStyle.caption.copyWith(color:
              AppColor.kWhite),
              // unselectedLabelColor: AppColor.kWhite.withOpacity(0.5),
              tabs: [
                Tab(
                  iconMargin: EdgeInsets.zero,
                  child: Container(
                      alignment: Alignment.center,
                      child: const Text('New Connections')),
                ),
                Tab(
                  child: Container(
                      alignment: Alignment.center,
                      child: const Text('My Connections')),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        Expanded(
            child: TabBarView(
          controller: tabController,
          children: [
            Column(
              children: [
                Padding(
                  padding:  EdgeInsets.all(dimensions.paddingSmall),
                  child: TextFormField(
                    controller: controller,
                    style: TxtStyle.small.copyWith(color: AppColor.kPrimary,fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      hintText: 'Search Connections..', filled: true,
                      fillColor: AppColor.fieldColor,
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: Padding(
                        padding:  EdgeInsets.all(dimensions.paddingMedium),
                        child: SvgPicture.asset(AppImage.filter),
                      ),
                      contentPadding: const EdgeInsets.only(bottom: 0),
                      enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(dimensions.borderRadius),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(dimensions.borderRadius),
                        borderSide: const BorderSide(color: Colors.transparent),
                        gapPadding: 0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(dimensions.paddingSmall),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
                            height: 44,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColor.kWhite,
                              border: Border.all(color: AppColor.kGrey),
                              borderRadius:
                                  BorderRadius.circular(dimensions.borderRadius),
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
                                children: [
                                  Image.asset(
                                    AppImage.personAvatar,
                                    height: 60,
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.008,
                                  ),
                                  Text(
                                    "Person Name",
                                    style: TxtStyle.caption.copyWith(fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.008,
                                  ),
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundColor: AppColor.kPurpleLight,
                                    child: const Center(
                                        child: Icon(
                                      Icons.add,
                                      size: 12,
                                    )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
            GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(dimensions.paddingSmall),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 0.0),
                      height: 44,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColor.kWhite,
                        border: Border.all(color: AppColor.kGrey),
                        borderRadius:
                            BorderRadius.circular(dimensions.borderRadius),
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
                          children: [
                            Image.asset(
                              AppImage.personAvatar,
                              height: 60,
                            ),
                            SizedBox(
                              height: Get.height * 0.008,
                            ),
                            Text(
                              "Person Name",
                              style: TxtStyle.caption.copyWith(fontSize: 13),
                            ),
                            SizedBox(
                              height: Get.height * 0.008,
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: AppColor.kPurpleLight,
                              child: true
                                  ? SvgPicture.asset(
                                      AppImage.chat,
                                      color: AppColor.kPrimary,
                                    )
                                  : const Center(
                                      child: Icon(
                                      Icons.add,
                                      size: 12,
                                    )),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ))
      ]),
    ));
  }
}
