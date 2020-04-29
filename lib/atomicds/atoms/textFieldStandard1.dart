import 'package:flutter/material.dart';

class TextFieldStandard1 extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final obscureText;
  final Color textColor;
  final TextEditingController controller;
  final VoidCallback onTab;
  final FocusNode focusNode;

  const TextFieldStandard1(
      {Key key,
      this.hintText,
      this.prefixIcon,
      this.obscureText: false,
      this.textColor: Colors.white,
      this.controller,
      this.onTab,
      this.focusNode,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      focusNode: this.focusNode,
        onTap: this.onTab,
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(color: textColor),
        decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon, color: Colors.white),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white),
            fillColor: Colors.white12,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(width: 0, style: BorderStyle.none))));
  }
}
