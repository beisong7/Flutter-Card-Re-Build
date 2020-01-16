import 'package:card_sample/model/lesson.dart';
import 'package:card_sample/pages/detailpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget{


  
  @override
  Widget build(context){
    return body();
  }

  static Widget body(){

    List lesson;

    lesson = getLesson();

    print('fetching lessons');
    print(lesson.runtimeType);
    print(lesson);
    
    
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lesson.length,
        itemBuilder: (BuildContext context, int index){
          return cardItem(context, lesson[index]);

        },

      ),
    );
  }
  
  static Widget cardItem(context, Lesson lesson){

    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTitle(lesson, context),
      ),
      
      
    );
  }
    
  static Widget makeListTitle(Lesson lesson, context){
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
          border: new Border(
            right: new BorderSide(width: 1.0 ,color: Colors.white24)
          )
        ),
        child: Icon(Icons.autorenew, color: Colors.white,),
      ),
      title: Text(lesson.title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

      subtitle: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: LinearProgressIndicator(
                backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                value: lesson.indicatorValue,
                valueColor: AlwaysStoppedAnimation(Colors.green),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(lesson.level, style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
      trailing: Icon(
          Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context)=> DetailPage(lesson: lesson))
            );
          },
      // Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,
    );
  }

  static List getLesson() {
    return [
      Lesson(
          title: "Introduction to Driving",
          level: "Beginner",
          indicatorValue: 0.33,
          price: 20,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
      Lesson(
          title: "Observation at Junctions",
          level: "Beginner",
          indicatorValue: 0.33,
          price: 50,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
      Lesson(
          title: "Reverse parallel Parking",
          level: "Intermidiate",
          indicatorValue: 0.66,
          price: 30,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
      Lesson(
          title: "Reversing around the corner",
          level: "Intermidiate",
          indicatorValue: 0.66,
          price: 30,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
      Lesson(
          title: "Incorrect Use of Signal",
          level: "Advanced",
          indicatorValue: 1.0,
          price: 50,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
      Lesson(
          title: "Engine Challenges",
          level: "Advanced",
          indicatorValue: 1.0,
          price: 50,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
      Lesson(
          title: "Self Driving Car",
          level: "Advanced",
          indicatorValue: 1.0,
          price: 50,
          content:
              "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.  ")
    ];
  }


}