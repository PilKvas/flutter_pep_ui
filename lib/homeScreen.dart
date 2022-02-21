// ignore_for_file: unused_import, prefer_const_constructors, prefer_typing_uninitialized_variables, unused_local_variable


import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuration.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    double xOffset = 0;
    double yOffset = 0;
    double  scaleFactor = 1;
    bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
      duration: Duration(milliseconds: 150),
      color: Colors.grey[200],
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Container(
                margin: EdgeInsets.symmetric(horizontal:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  children: [
                   isDrawerOpen?IconButton(
                      icon: Icon(Icons.arrow_back_ios), 
                      onPressed: (){
                        setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scaleFactor = 1;
                            isDrawerOpen = false;
                        });
                      },
                      ):
                   IconButton(
                      icon: Icon(Icons.menu), onPressed: (){
        
                        setState(() {
        
                          xOffset = 230;
                          yOffset = 120;
                          scaleFactor = 0.6;
                          isDrawerOpen = true;
        
                        });
                    }),
                    Column(
                      children: [
                        Text('Location'),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: primaryGreen,
                            ),
                            Text('Ukraine'),
                          ]
                        ),
                   
                    ]
                    ),
                  CircleAvatar(),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical:20),
                padding: EdgeInsets.symmetric(horizontal:20, vertical:15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(Icons.search),
                    Text('Search pet to adopt'),
                    Icon(Icons.settings),
                  ]
                ),
              ),
              
              Container(height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Container (
                        padding: EdgeInsets.symmetric(horizontal:10, vertical:10),
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: shadowList ,
        
                        ),
                        child: Column (
                   
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset(categories[index]['iconPath'], height: 50, width:50, color: Colors.grey[700],),
                              
                            ),
           
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text(categories[index]['name']),
                      ),
                    ],
                  );
                }
              )
              ),
             Cat_card1(),
             Cat_card2(),
            ],
          ),
        ),
    
    );
  }
}

class Cat_card1 extends StatelessWidget {
  const Cat_card1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
          Container(
            height: 260,
            margin: EdgeInsets.symmetric(horizontal:20, vertical:20),
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.blueGrey[300],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: shadowList
                        ),
                        margin: EdgeInsets.only(top: 50),
                      ),
                      Align(
                        child: Image.asset('images/pet-cat2.png')
                      )
                    ],
                  )
    
                ),
               Expanded(
               child: Container(
                 margin: EdgeInsets.only(top: 60, bottom: 10),
                 decoration: BoxDecoration(color: Colors.white,
                 boxShadow: shadowList,
                 borderRadius: BorderRadius.only(
                   topRight: Radius.circular(20),
                   bottomRight: Radius.circular(20),
                 )
               ),
               child: Column(children: [
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20, 10, 10, 2),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                     Text('Sola', 
                     style: TextStyle(
                       fontSize: 25,
                       color: Colors.blueGrey,
                       fontWeight: FontWeight.bold,
                     ),
              
                     ),
                     Icon(
                       Icons.male,
                       color: Colors.blueGrey[300],
                       size: 40,
                     ),
                   ],),
                 ),
                 // ignore: prefer_const_literals_to_create_immutables
                 Padding(
                   padding: const EdgeInsets.only(left: 20),
                   child: Row(children: [
                       Text('Abyssian cat', style: TextStyle(
                         color: Colors.grey,
                         fontSize: 20,
                       )),
                   ],),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20),
                   child: Row(children: [
                     Text('2 years old', style: TextStyle(
                           color: Colors.grey,
                           fontWeight: FontWeight.w500,
                           fontSize: 15,
                         )),
                   ],),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:14, top: 10),
                   child: Row(children: [
                     Icon(
                       Icons.location_on,
                       color: primaryGreen,
                     ),
                     Text('Distance: 3.6 km', style: TextStyle(
                       color: Colors.grey,
                       
                     ))
                   ],
                   ),
                 )
               ],)
               ),
               ),
              ],
            )
          );
  }
}

class Cat_card2 extends StatelessWidget {
  const Cat_card2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
          Container(
            height: 260,
            margin: EdgeInsets.symmetric(horizontal:20, vertical:20),
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.blueGrey[300],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: shadowList
                        ),
                        margin: EdgeInsets.only(top: 50),
                      ),
                      Align(
                        child: Image.asset('images/pet-cat1.png')
                      )
                    ],
                  )
    
                ),
               Expanded(
               child: Container(
                 margin: EdgeInsets.only(top: 60, bottom: 10),
                 decoration: BoxDecoration(color: Colors.white,
                 boxShadow: shadowList,
                 borderRadius: BorderRadius.only(
                   topRight: Radius.circular(20),
                   bottomRight: Radius.circular(20),
                 )
               ),
               child: Column(children: [
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20, 10, 10, 2),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                     Text('Sola', 
                     style: TextStyle(
                       fontSize: 25,
                       color: Colors.blueGrey,
                       fontWeight: FontWeight.bold,
                     ),
              
                     ),
                     Icon(
                       Icons.male,
                       color: Colors.blueGrey[300],
                       size: 40,
                     ),
                   ],),
                 ),
                 // ignore: prefer_const_literals_to_create_immutables
                 Padding(
                   padding: const EdgeInsets.only(left: 20),
                   child: Row(children: [
                       Text('Abyssian cat', style: TextStyle(
                         color: Colors.grey,
                         fontSize: 20,
                       )),
                   ],),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20),
                   child: Row(children: [
                     Text('2 years old', style: TextStyle(
                           color: Colors.grey,
                           fontWeight: FontWeight.w500,
                           fontSize: 15,
                         )),
                   ],),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:14, top: 10),
                   child: Row(children: [
                     Icon(
                       Icons.location_on,
                       color: primaryGreen,
                     ),
                     Text('Distance: 3.6 km', style: TextStyle(
                       color: Colors.grey,
                       
                     ))
                   ],
                   ),
                 )
               ],)
               ),
               ),
              ],
            )
          );
  }
}