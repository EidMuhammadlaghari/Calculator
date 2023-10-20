import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyVideoHtml extends StatefulWidget {
  @override
  State<MyVideoHtml> createState() => _MyVideoHtmlState();
}

class _MyVideoHtmlState extends State<MyVideoHtml> {
  @override
  Widget build(BuildContext context) {
    List<String> data =
        ModalRoute.of(context)!.settings.arguments as List<String>;
    List<String> items = [''];
    final List<String> java = [
      "Introduction to Java",
      "Java Basic Structure",
      "Java variables & data types",
      "Java Operators",
      "Java If_else",
      "Java Switch",
      "Java While_Loop",
      "Java For_loop",
      "Java  Break/continue",
      "Java Array",
      "Java Methods",
      "Java Oop",
      "Java Error-Exception"
    ];
    final List<String> python = [
      "Introduction to Python",
      "Python variables",
      "Python data types",
      "Python Operators"
    ];
    if (data[0] == 'Java') {
      items = java;
    } else {
      items = python;
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Clickable Links Example'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        "https://www.youtube.com/watch?v=ntLJmHOJ0ME&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q");
                  },
                  child: ListTile(
                    title: Text(items[0]),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.youtube.com/watch?v=zIdg7hkqNE0&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q&index=2');
                  },
                  child: ListTile(
                    title: Text(items[1]),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.youtube.com/watch?v=X0zdAG7gfgs&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q&index=3');
                  },
                  child: ListTile(
                    title: Text(items[2]),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.youtube.com/watch?v=pnn2VTSr1Ko&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q&index=8');
                  },
                  child: ListTile(
                    title: Text(items[3]),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.youtube.com/watch?v=YPK6NYMJt_A&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q&index=16');
                  },
                  child: ListTile(
                    title: Text(items[4]),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.youtube.com/watch?v=hdOtQSuPBRY&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q&index=18');
                  },
                  child: ListTile(
                    title: Text(items[5]),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.youtube.com/watch?v=XFyNiI6ozO0&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q&index=22');
                  },
                  child: ListTile(
                    title: Text(items[6]),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.youtube.com/watch?v=XHgC6Md8L9o&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q&index=23');
                  },
                  child: ListTile(
                    title: Text(items[7]),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.youtube.com/watch?v=HguqMkdIkcs&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q&index=24');
                  },
                  child: ListTile(
                    title: Text(items[8]),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.youtube.com/watch?v=qMePCtjeqB4&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q&index=26');
                  },
                  child: ListTile(
                    title: Text(items[9]),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.youtube.com/watch?v=t6e5AyYWLFw&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q&index=31');
                  },
                  child: ListTile(
                    title: Text(items[10]),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.youtube.com/watch?v=5OrZpBbGKgc&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q&index=36');
                  },
                  child: ListTile(
                    title: Text(items[11]),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://www.youtube.com/watch?v=ZovnoASlIaE&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q&index=78');
                  },
                  child: ListTile(
                    title: Text(items[12]),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          )),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}



//  Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'Click the link below:',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   _launchURL('https://www.youtube.com/watch?v=FPBUoRRZwiE');
//                 },
//                 child: Text(
//                   'www.example.com',
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     color: Colors.blue,
//                     decoration: TextDecoration.underline,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
