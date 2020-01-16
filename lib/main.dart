import 'package:card_sample/components/body.dart';
import 'package:card_sample/components/bottomnav.dart';
import 'package:card_sample/components/topnav.dart';
import 'package:card_sample/model/lesson.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Card Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: new ListPage(title: 'Lessons'),
    );
  }
  
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: Topnav(),
      body: Body(),
      bottomNavigationBar: BottomNav(),
    );
  }


  

}
