// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final ImageProvider<Object> backgroundImage;
  final String text;
  final String hotelLocation;
  final String hotelPrice;
  final String rating;
  final double width;
  final double height;

  const CustomContainer({
    Key? key,
    required this.backgroundImage,
    required this.text,
    required this.hotelLocation,
    required this.hotelPrice,
    required this.rating,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: backgroundImage,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 7.0),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      hotelLocation,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.attach_money,
                      color: Colors.white,
                      size: 14.0,
                    ),
                    SizedBox(width: 2.0),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: hotelPrice,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          TextSpan(
                              text: '/night',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 13,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
