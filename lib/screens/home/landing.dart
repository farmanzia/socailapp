import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:socialapp/screens/base_scaffold.dart';
import 'package:socialapp/screens/home/groups.dart';
import 'package:socialapp/screens/home/up_coming_events.dart';
import 'package:socialapp/screens/home/view_model.dart';
import 'package:socialapp/screens/home/widgets/app_bottom_bar.dart';

import '../../main.dart';
import 'chat.dart';
import 'connection.dart';
import 'home.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => BaseScaffold(
          body: _getPage(common.bottomBarIndex.value),
          bottomNavigationBar: bottomBar(context),
        ));
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const Home();
      case 1:
        return Connection();
      case 2:
        return Chat();
      case 3:
        return const Groups();
      case 4:
        return UpComing();
      default:
        return Container();
    }
  }
}
