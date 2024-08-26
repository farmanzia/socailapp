import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_routes.dart';
import 'utils/common.dart';

Common common=Get.put(Common());

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Connect App",
      debugShowCheckedModeBanner: false,
      initialRoute:AppRoutes.landing,
      getPages: AppRoutes.routes,
    );
  }
}