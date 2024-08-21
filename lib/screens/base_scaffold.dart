import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget? appBar;
  final Widget? bottomNavigationBar;
  final Widget body;

  const BaseScaffold({
    super.key,
    this.appBar,
    this.bottomNavigationBar,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar != null
          ? PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: SafeArea(child: appBar!),
      )
          : null,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
