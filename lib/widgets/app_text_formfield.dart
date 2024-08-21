import 'package:flutter/material.dart';

class  AppTextFormField extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? postfixIcon;
  final TextEditingController? controller;
  final bool obscureText;

  const  AppTextFormField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.postfixIcon,
    this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        // prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: Colors.grey) : null,
        suffixIcon: postfixIcon != null ? Icon(postfixIcon, color: Colors.grey) : null,
        filled: true,
        fillColor: Colors.white,
        enabledBorder: _buildInputBorder(),
        focusedBorder: _buildInputBorder(isFocused: true),
        border: _buildInputBorder(),
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: hintText,
        //   isCollapsed:true,
        //   isDense:true,
        //   semanticCounterText:'d',
        labelStyle: const TextStyle(color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
    );
  }

  InputBorder _buildInputBorder({bool isFocused = false}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: true? BorderSide.none: BorderSide(
        color: isFocused ? Colors.purple : Colors.transparent,
        width: 2.0,
      ),
    );
  }

  BoxShadow _buildBoxShadow({bool isLight = true}) {
    return BoxShadow(
      color: Colors.black.withOpacity(isLight ? 0.1 : 0.2),
      offset: isLight ? const Offset(-20, -20) : const Offset(20, 20),
      blurRadius: isLight ? 5 : 10,
    );
  }
}

