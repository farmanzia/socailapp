import 'package:flutter/material.dart';
import 'package:socialapp/utils/app_color.dart';

class BaseScaffold extends StatelessWidget {
  final Widget? appBar;
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final Widget body;

  const BaseScaffold({
    super.key,
    this.appBar,
    this.bottomNavigationBar,
    this.drawer,
    this.floatingActionButton,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhite,
      drawer:drawer ,
      appBar: appBar != null
          ? PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: SafeArea(child: appBar!),
      )
          : null,
      body: body,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
