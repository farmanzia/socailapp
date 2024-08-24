import 'package:flutter/material.dart';
import 'package:socialapp/screens/base_scaffold.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(body: Center(child: Text("Home "),));
  }
}
