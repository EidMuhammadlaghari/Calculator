import 'dart:js';
import 'dart:ui';
import 'package:elearn/Tuitorial/Tuitorail.dart';
import 'package:elearn/Tuitorial/TuitorialScreen.dart';
import 'package:elearn/Tuitorial/YoutubeC.dart';
import 'package:elearn/Tuitorial/YoutubeP.dart';
import 'package:elearn/Tuitorial/Youtube_video1.dart';
import 'package:elearn/Uifunctions/Coursedetail.dart';
import 'package:elearn/Videos/Video.dart';
import 'package:elearn/dashboar.dart';
import 'package:elearn/items.dart';
import 'package:elearn/login_form.dart';
import 'package:elearn/registerForm.dart';
import 'package:elearn/splash.dart';
import 'package:flutter/material.dart';
import './home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MySplash(),
    routes: {
      '/home': (context) => MyHome(),
      '/register': (contents) => RegisterForm(),
      '/login': (context) => LoginForm(),
      '/user-dashboard': (context) => Mydashboard(),
      '/detail-page': (context) => MyCoursedetail(),
      '/video_html': (context) => MyVideoHtml(),
      '/video_css': (context) => MyVideoCss(),
      '/video_java': (context) => MyVideoProgramming(),
      '/detail-tuitorial': (context) => MyTuitorail(),
      '/detail-videos': (context) => MyVideo(),
      '/tuitorial_main': (context) => MyTuitorialScreen()
    },
  ));
}
