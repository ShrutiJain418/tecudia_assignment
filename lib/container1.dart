// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HotelContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      height: 110.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15.0),
        // border: Border.all(
        //   color: Colors.blue,
        //   width: 2.0,
        // ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.hotel_outlined,
            size: 30.0,
            color: Colors.white,
          ),
          SizedBox(height: 8.0),
          Text(
            'Hotel',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
