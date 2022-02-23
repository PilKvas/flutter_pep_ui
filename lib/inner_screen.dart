import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuration.dart';

class Inner_screen extends StatelessWidget {
  const Inner_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned.fill(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.blueGrey[300],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 30),
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(icon: Icon(Icons.share), onPressed: () {}),
            ],
          ),
        ),
      ),
      Container(
        child: Align(
          alignment: Alignment.topCenter,
          child: Hero(
            tag: 1,
            child: Image.asset(
              'images/pet-cat2.png',
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment(1.00, 0.10),
        child: Container(
          height: 150,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: shadowList,
          ),
        ),
      ),
      
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: 100,
            child: Row(
              children: [
                SizedBox(width:10,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryGreen,
                  ),
                  child: Icon(Icons.favorite_border, color: Colors.white),
                ),
                SizedBox(width:10,),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: primaryGreen,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('Adoption', style: TextStyle(color: Colors.white,fontSize:24),)),
                  ),
                ),
                SizedBox(width:10,),
              ],
              
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            )),
      ),
    ]));
  }
}
