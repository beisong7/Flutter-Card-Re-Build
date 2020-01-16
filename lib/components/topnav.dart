import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Topnav extends StatelessWidget with PreferredSizeWidget{
  @override
  Widget build(context){
    return topnav();
  }

  static Widget topnav(){

    return AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text('Lessons O'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: (){},
          )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
 
}