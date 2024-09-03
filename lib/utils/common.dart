import 'package:get/get.dart';
import 'package:socialapp/utils/app_images.dart';

class Common extends GetxController{
 RxInt bottomBarIndex=0.obs;
 RxList<String> eventImg=[AppImage.event1,AppImage.event2].obs;
 RxList<String> eventImg2=[AppImage.event2,AppImage.event1].obs;
}