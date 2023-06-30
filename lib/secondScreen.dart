// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tecudia_assignment/container.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 200.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'BaLi Motel',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        'Vung Tau',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                            size: 20.0,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            'Indonesia',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Container(
                        height: 30,
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '4.9',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              '(6.8K review)',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                              ),
                            ),
                            Spacer(),
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '\$580/',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 28.0),
                                  ),
                                  TextSpan(
                                      text: 'night',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Divider(
                        color: Colors.grey[400],
                        height: 1.0,
                        thickness: 1.0,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Wrap(
                              alignment: WrapAlignment.start,
                              children: [
                                Text(
                                  'Set in Vung Tau,100 metres from Front Beach,BaLi Motel Vung '
                                  'Tau offers accomodation with a garden,private parking and a shared...',
                                  maxLines: 3,
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Read more',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'What we offer',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        height: 80.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FlexibleContainer(
                                    color: Colors.white,
                                    width: 70.0,
                                    height: 80.0,
                                    text: '2 Bed',
                                    icon: Icons.bed_outlined),
                                SizedBox(
                                  width: 30.0,
                                ),
                                FlexibleContainer(
                                    color: Colors.white,
                                    width: 70.0,
                                    height: 80.0,
                                    text: 'Dinner',
                                    icon: Icons.dinner_dining_outlined),
                                SizedBox(
                                  width: 30.0,
                                ),
                                FlexibleContainer(
                                    color: Colors.white,
                                    width: 70.0,
                                    height: 80.0,
                                    text: 'Hot Tub',
                                    icon: Icons.hot_tub_outlined),
                                SizedBox(
                                  width: 30.0,
                                ),
                                FlexibleContainer(
                                    color: Colors.white,
                                    width: 70.0,
                                    height: 80.0,
                                    text: '1 Ac',
                                    icon: Icons.ac_unit_outlined),
                                SizedBox(
                                  width: 30.0,
                                ),
                                FlexibleContainer(
                                    color: Colors.white,
                                    width: 70.0,
                                    height: 80.0,
                                    text: '1 Ac',
                                    icon: Icons.ac_unit_outlined),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Hosted by',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/image4.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Harleen Smith',
                                  style: TextStyle(fontSize: 16)),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.orange),
                                  SizedBox(width: 5),
                                  Text(
                                    '4.9',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '(1.6K review)',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.sms_rounded,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 500,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(top: 100.0, left: 20.0)),
              Positioned(
                // top: 100.0,
                // left: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Spacer(),
              Positioned(
                // top: 20,
                // right: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(Icons.share_outlined),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              Positioned(
                // top: 20,
                // right: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
