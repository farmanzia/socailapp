import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_routes.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Connect App",
      debugShowCheckedModeBanner: false,
      initialRoute:'/',
      getPages: AppRoutes.routes,
    );
  }
}