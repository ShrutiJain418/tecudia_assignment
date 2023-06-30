// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:tecudia_assignment/container.dart';
import 'package:tecudia_assignment/container2.dart';
import 'package:tecudia_assignment/secondScreen.dart';
import 'package:tecudia_assignment/container1.dart';
import 'package:tecudia_assignment/container3.dart';
//import 'package:tecudia_assignment/listbuilder.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final Size screenSize = MediaQuery.of(context).size;
    // final double boxWidth = screenSize.width * 1;
    // final double boxHeight = screenSize.height * 1;
    final BorderRadius borderRadius = BorderRadius.circular(30);
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          // height: boxHeight,
          // width: boxWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: borderRadius,
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      'Where you wanna go?',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    radius: 30.0,
                    child: IconTheme(
                      data: IconThemeData(size: 35),
                      child: IconButton(
                        icon: Icon(Icons.search_rounded),
                        onPressed: () {},
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HotelContainer(),
                        SizedBox(
                          width: 20.0,
                        ),
                        FlexibleContainer(
                          color: Colors.white,
                          width: 90,
                          height: 110,
                          text: 'Flight',
                          icon: Icons.flight_outlined,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        FlexibleContainer(
                          color: Colors.white,
                          width: 90,
                          height: 110,
                          text: 'Place',
                          icon: Icons.place_outlined,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        FlexibleContainer(
                          color: Colors.white,
                          width: 90,
                          height: 110,
                          icon: Icons.food_bank_outlined,
                          text: 'Food',
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Hotels',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomContainer(
                          width: 150,
                          height: 200,
                          backgroundImage: AssetImage('assets/image1.jpg'),
                          text: 'Santorini',
                          hotelLocation: 'Greece',
                          hotelPrice: '488',
                          rating: '4.9',
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        CustomContainer(
                          width: 150,
                          height: 200,
                          backgroundImage: AssetImage('assets/image2.jpg'),
                          text: 'Hotel Royal',
                          hotelLocation: 'Spain',
                          hotelPrice: '280',
                          rating: '4.8',
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        CustomContainer(
                          width: 150,
                          height: 200,
                          backgroundImage: AssetImage('assets/image5.jpg'),
                          text: 'Imperial Hotel',
                          hotelLocation: 'Tokyo',
                          hotelPrice: '300',
                          rating: '5.0',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hot Deals',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ),
                  );
                },
                child: DealsContainer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
