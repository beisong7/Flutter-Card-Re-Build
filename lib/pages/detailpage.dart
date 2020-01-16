import 'package:card_sample/model/lesson.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatelessWidget{
  final Lesson lesson;

  DetailPage({Key key, this.lesson}) : super(key:key);

  @override
  Widget build(BuildContext context){

    return contents(lesson, context);

  }

  static Widget contents(lesson, context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          topContent(lesson, context),
          bottomContent(lesson, context)
        ],
      ),
    );
  }

  static Widget topContent(lesson, context){
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.5,
          decoration:  BoxDecoration(
            image:  DecorationImage(
              image: AssetImage("drive.jpg"),
              fit: BoxFit.cover
            )
          ),
        ),

        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(20.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
          child: Center(child: topContextText(lesson, context)),
        ),
        Positioned(
          left: 20.0,
          top: 60.0,
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white,),
          ),
        )


      ],
    );
  }

  static Widget topContextText(Lesson lesson, context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 100.0),
        Icon(
          Icons.directions_car,
          color: Colors.white,
          size: 20.0,
        ),
        Container(
          width: 90.0,
          child: Divider(color: Colors.green,),
        ),
        SizedBox(height: 10.0,),
        Text(
          lesson.title,
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
        SizedBox(height: 20.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(flex: 1, child: levelIndicator(lesson)),
            Expanded(
              flex: 6, 
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  lesson.level,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: coursePrice(lesson),
            )

          ],
        )
      ],
    );
  }

  static Widget levelIndicator(Lesson lesson){
    return Container(
      child: Container(
        child: LinearProgressIndicator(
          backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
          value: lesson.indicatorValue,
          valueColor: AlwaysStoppedAnimation(Colors.green),
        ),
      ),
    );
  }

  static Widget coursePrice(Lesson lesson){
    return Container(
      padding: const EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        "\$" + lesson.price.toString(),
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  static Widget bottomContent(Lesson lesson, context){
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          children: <Widget>[
            bottomContentText(lesson),
            readButton(context)
          ],
        ),
      ),
    );
  }

  static Widget bottomContentText(Lesson lesson){
    return Text(
      lesson.content,
      style: TextStyle(fontSize: 18.0),
    );
  }

  static Widget readButton(context){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        onPressed: ()=>{},
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Text("TAKE LESSON", style: TextStyle(color: Colors.white),),
      ),
    );
  }

}