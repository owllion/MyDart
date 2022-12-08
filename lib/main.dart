import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()); //runApp -> calls the build() which returns the widget object.
}

class MyApp extends StatelessWidget {
  //function should be defined in the class, instead of in this file(outside this class)
  void answerQuestion() {
    print('click me? times');
  }
  //every widget in Flutter needs to extend stateless widget or stateful widget,
  //so it needs to extend one of these two base widget classes and each of these classes will force you to add a build method because in the end, Flutter will always call that build method for you.

  Widget build(BuildContext context) {
    //The build method is always responsible for returning a new widget which should be drawn onto the screen
    //build() returns a so-called "widget tree" which tells Flutter what to draw onto the screen.

    return MaterialApp(
      //MaterialApp is provided by material.dart提供的method
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Text('The question'),
            ElevatedButton(child: Text('Answer1'), onPressed: answerQuestion),
            //ElevatedButton(new) v.s RaisedButton(already deprecated)
            ElevatedButton(
                child: Text('Answer2'), onPressed: () => print('try arrow')),
            ElevatedButton(
                child: Text('Answer3'),
                onPressed: () {
                  print('try inline method');
                })
          ],
        ),
      ),
    );
    //So both text and hello are arguments, text is an argument to MaterialApp for the home argument
    //and hello is an argument to the text widget.
  }
}

class Person {
  String name;
  int age;
  Person({@required String name, int myAge = 50}) {
    //Person(xxx){xxx} ->This is class constructor,
    //And @required can only be used in Flutter,if you use it in Dart IDE,you'll get the error.
    //Person({}) -> add {} in the parameters means parameters are optional and named,

    this.name = name;
    age = myAge;
  }
}

class Short {
  String movie;
  int date;
  Short({this.movie, this.date = 2025});
  //Alternative way to write constructor.
  //it means arguments received are directly assigned to this class properties(movie and date),no need to write it by ourself.
}
