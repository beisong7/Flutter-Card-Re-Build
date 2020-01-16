import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget{
  Widget build(context){
    return bottomNav();
  }

  static Widget bottomNav(){

    return Container(
    height: 55.0,
    child: BottomAppBar(
      color: Color.fromRGBO(58, 66, 86, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          btnItem(Icons.home, (){
            print('home pressed');
          }),
          btnItem(Icons.blur_on, (){
            print('blur pressed');
          }),
          btnItem(Icons.hotel, (){
            print('hotels pressed');
          }),
          btnItem(Icons.account_box, (){
            print('account pressed');
          }),

         
        ],
      ),
    ),
  );
  
  }

  static Widget btnItem(IconData icon, action){
    return  IconButton(
            icon: Icon(icon), 
            color: Colors.white,
            onPressed: action,
          );
  }

 
}