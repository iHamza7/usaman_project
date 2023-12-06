import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Widget? suffix;
  final Widget prefix;
  final String? hintText;
  const CustomTextField({
    Key? key,
    required this.prefix,
    this.suffix,
    this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: TextField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffix,
          prefixIcon: prefix,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
    );
  }
}
