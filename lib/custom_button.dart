import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback press;
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      width: double.infinity,
      child: TextButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color,
          ),
        ),
      ),
    );
  }
}
