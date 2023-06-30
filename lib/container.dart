// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class FlexibleContainer extends StatelessWidget {
  // final screenWidth = MediaQuery.of(context as BuildContext).size.width;
  // final screenHeight = MediaQuery.of(context as BuildContext).size.height;
  final Color color;
  final double width;
  final double height;
  final String text;
  final IconData icon;
  FlexibleContainer({
    required this.color,
    required this.width,
    required this.height,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30.0,
            color: Colors.grey,
          ),
          SizedBox(height: 8.0),
          Text(
            text,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
