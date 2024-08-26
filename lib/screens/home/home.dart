import 'package:flutter/material.dart';
import 'package:socialapp/screens/base_scaffold.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(body: Center(child: Text("Home"),));
  }
}
