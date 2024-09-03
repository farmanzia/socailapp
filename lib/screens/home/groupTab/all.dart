import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';
import 'package:socialapp/utils/dimensions.dart';

class AllGroups extends StatelessWidget {
  const AllGroups({super.key});

  @override
  Widget build(BuildContext context) {
  var  dimensions=Dimensions(context);
    return BaseScaffold(body: ListView.builder(itemBuilder: (context, index) {
      return Column(
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
                SizedBox(
                  width: Get.width * 0.02,
                ),
                 Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name of Group",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TxtStyle.caption.copyWith(fontSize: 16),
                      ),
                      Text(
                        "Lorem ipsum text",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TxtStyle.small.copyWith(fontSize: 13),
                      )
                    ],
                  ),
                ),

                Container(
                  // height: 40,
                  // width: Get.width * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          dimensions.borderRadiusLarge),
                      gradient: const LinearGradient(
                          colors: AppColor.gradientColor)),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(vertical: dimensions.paddingSmall,horizontal: dimensions.paddingMedium),
                    child: Center(
                        child: Text(
                          "Join",
                          style: TxtStyle.body.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: AppColor.kWhite),
                        )),
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }));
  }
}
