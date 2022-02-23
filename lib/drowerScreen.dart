// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuration.dart';

class DrowerScreen extends StatefulWidget {
  const DrowerScreen({Key? key}) : super(key: key);

  @override
  _DrowerScreenState createState() => _DrowerScreenState();
}

class _DrowerScreenState extends State<DrowerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50,bottom:50,left: 10),
      color: primaryGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Artem Darbinyan',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Text('Active Status',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
          Column(
            children: drawerItems .map((element) => Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(element['icon'], color: Colors.white,),
                  Text(element['title'], style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
              ],
              ),
            )).toList(),
            ),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Settings',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Log out',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
