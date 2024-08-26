import 'package:flutter/material.dart';
import 'package:socialapp/screens/base_scaffold.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(body: Center(child: Text("Chat"),));
  }
}
