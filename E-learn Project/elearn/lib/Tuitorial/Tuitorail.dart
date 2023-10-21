import 'package:elearn/Tuitorial/TopicList.dart';
import 'package:flutter/material.dart';

class MyTuitorail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tuitorial"),
      ),
      body: MyTopicList(),
    );
  }
}
