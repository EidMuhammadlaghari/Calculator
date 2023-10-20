import 'package:elearn/Uifunctions/Tuitorial_data.dart';
import 'package:flutter/material.dart';

class MyTuitorialScreen extends StatefulWidget {
  @override
  State<MyTuitorialScreen> createState() => _MyTuitorialScreenState();
}

class _MyTuitorialScreenState extends State<MyTuitorialScreen> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail tuitorial page"),
        ),
        body: MyTuitorialData());
  }
}
