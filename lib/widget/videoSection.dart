// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
 List videoList=[
 'introduction to flutter',
 'Instailling Flutter on window',
 'Setup Emulator on windows',
 'Creating Our first App'
 ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:videoList.length ,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder:(context,index){
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index==0 ?
               Color(0xff674AEF) :
               Color(0xff674AEF).withOpacity(0.6),
               shape: BoxShape.circle
            ),
            child:Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ) ,
          ),
          title: Text('${videoList[index]}'),
          subtitle: Text("20 min 50 sec"),
        );
      } ,
    );
  }
}