// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:education/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
       child:Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                      Stack(
                  children: [
                     Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                      ),
                    
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.6,
                      decoration: BoxDecoration(
                        color: Color(0xff674AEF),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                      ),
                      
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(35),
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                          child: Image.asset(
                            'assets/images/images.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
               Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.666,
                     
                      decoration: BoxDecoration(
                            color: Color(0xff674AEF),
                       
                      ),
                    
                    ),
               ),
                Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.666,
                      padding: EdgeInsets.only(top: 40,bottom: 40),
                      decoration: BoxDecoration(
                            color: Colors.white,
                        borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70)),
                      ),
                      child: Column(
                        children: [
                          Text('Learning Is Everything',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            wordSpacing: 2
                          ),
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              "Learning with pleasure with Dear Programmer, where you are.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.6)
                              ),
                              ),


                            ),
                          SizedBox(height: 15,),
                          Material(
                            color: Color(0xff674AEF),
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () {

                               Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(),));  
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 80
                                ),
                                child: Text(
                                  "Get Started",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    letterSpacing: 1
                                    ,
                                    fontWeight: FontWeight.bold),),
                              ),
                            ),
                          )

                      ]),
                    
                    ),
               )
                ],
              
              ))
     
    );
  }
}

