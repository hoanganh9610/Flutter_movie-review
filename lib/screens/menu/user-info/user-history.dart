import 'package:flutter/material.dart';
import 'package:movie_review/constants.dart';
import 'package:movie_review/screens/menu/user-info/movie/movie-item.dart';

class UserHistory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back, color: kTextLightColor,), onPressed: (){
          Navigator.of(context).pop();
        },),
        backgroundColor: Colors.white,
        title: Text("History", style: TextStyle(color: kTextLightColor),),
      ),
      body: SingleChildScrollView(
        child: MovieItem()
        )
      );
  }
  
}