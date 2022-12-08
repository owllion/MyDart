import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionsText;
  /**
   * statelessWidget is immutable, 
   * but you can still modify its property(which is questionsText in this case).
   * which will just have no effect:)
   * so just add final keyword to tell Dart that this property will never change after its initialization here in the constructor.(when create this widget,constructor it's the first part to run! In our case,we received the questionText from outside then just assign this value to the questionsText property,after this, that property will never change. That's what it means "will never change after its initialization".)
   * 
  **/
  Question(this.questionsText);

  @override
  Widget build(BuildContext context) {
    return Text(questionsText);
  }
}
