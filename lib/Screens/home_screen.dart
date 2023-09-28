// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:education/Screens/Coures_Screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  List catName=[
    'Category',
    'Classes',
    'Free Course',
    'BookStore',
    'Live Course',
    'LeaderBoard'

  ];
  List<Color> catColor=[
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
    Color(0xFF61BDFD),
    Color(0xFFFC7C7F),
    Color(0xFFCBB4FB),
    Color(0xFF78E667),
  ];

  List<Icon> catIcons=[
    Icon(Icons.category,size: 30,color: Colors.white,),
    Icon(Icons.video_library,size: 30,color: Colors.white,),
    Icon(Icons.assessment,size: 30,color: Colors.white,),
    Icon(Icons.store,size: 30,color: Colors.white,),
    Icon(Icons.play_circle_fill,size: 30,color: Colors.white,),
    Icon(Icons.emoji_events,size: 30,color: Colors.white,),

  ];

  List imgList=[
    'cSharp',
    'flutter',
    'React Native',
    'python'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 15),
            decoration: BoxDecoration(
              color: Color(0xff674AEF), 
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.dashboard,
                    color: Colors.white,
                    size: 30,
                  ),
                   Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 3,bottom: 15),
                child: Text(
                  "Hi Programmer",
                  textAlign:TextAlign.left,
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    ) ,
                ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10)
                    ),
                  child:TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here...",
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5)
                      )
                    ),
                  ) ,  
                ) ,
                
            ]
            ),   
          ),
          Padding(
                  padding:EdgeInsets.only(top: 20,left: 15,right: 15),
                  child: Column(
                    children: [
                      GridView.builder(
                        itemCount: catName.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:3,
                          childAspectRatio: 1.1
                           ),
                        itemBuilder:(context,index) {
                          return Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: catColor[index],
                                  shape:BoxShape.circle 
                                ),
                                child: Center(
                                  child:catIcons[index] ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                catName[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.7)
                                ),) 
                            ],

                          );
                        },  
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Courses',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                           Text(
                            'See All',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff674AEF),
                            ),
                          ),
                          //
                        ],
                      ),
                       SizedBox(height: 10,),
                       GridView.builder(
                                itemCount: imgList.length,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4 * 240),
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                ),
                                itemBuilder: ((context, index) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                         MaterialPageRoute(
                                        builder:(context)=>
                                        CourseScreen(imgList[index])
                                        ));
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xFFF5F3FF),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Image.asset('assets/images/${imgList[index]}.png',
                                              width: 100,
                                              height: 100,
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text(
                                            imgList[index],
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text(
                                            '55 Videos',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black.withOpacity(0.5)
                                            ),

                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              )

                    ]
                    ),
                    

                )
        ],
      ),
  bottomNavigationBar:BottomNavigationBar(
    showSelectedLabels: true,
    iconSize: 32,
    selectedItemColor: Color(0xff674AEF),
    selectedFontSize: 18,
    unselectedItemColor: Colors.grey,
    items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.assessment),label: 'Coures'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Wishhlist'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Acoount'),

    ]) ,
    );
  }
}