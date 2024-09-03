import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/utils/app_color.dart';
import 'package:socialapp/utils/app_images.dart';
import 'package:socialapp/utils/app_style.dart';

class DrawerWidget extends StatelessWidget {
 final String? assetName;
 final String? data;
 final Function()? onTap;
 final Color? color;
  const DrawerWidget({super.key,required this.assetName,this.color,required this.data,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(assetName!,color: color
            ??AppColor.kPrimary,),
          SizedBox(
            width: Get.width * 0.04,
          ),
          Text(
            data!,
            style: TxtStyle.caption
                .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
