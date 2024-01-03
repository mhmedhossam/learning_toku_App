import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class Category extends StatelessWidget {
  Category({
    required this.onTap,
    super.key,
    required this.text,
    required this.color,
  });
  String text;
  Color color;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 20),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
