import 'dart:js_interop';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class Item {
  final String name;
  final String description;

  Item({required this.name, required this.description});
}

class MyTopicList extends StatefulWidget {
  @override
  State<MyTopicList> createState() => _MyTopicListState();
}

class _MyTopicListState extends State<MyTopicList> {
  @override
  Widget build(BuildContext context) {
    List<String> data =
        ModalRoute.of(context)!.settings.arguments as List<String>;
    final course = data[0];
    print(course);
    Future<CourseData> fetchCourseData() async {
      final response = await http.get(Uri.parse(
          'http://10.11.75.60:4000/api/v1/course-detail/fatch-data/$course'));
      print(response.body);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);
        return CourseData(
          title: data['topic']['title'],
          shortd: data['topic']['short_d'], // Convert to Celsius
        );
      } else {
        throw Exception('Failed to load weather data');
      }
    }

    return Center(
        child: FutureBuilder(
            future: fetchCourseData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              '/tuitorial_main',
                            );
                          },
                          child: Text(snapshot.data!.title)),
                      subtitle: Text(snapshot.data!.shortd),
                    );
                  },
                );
              }
            }));
  }
}

class CourseData {
  final String title;
  final String shortd;

  CourseData({
    required this.title,
    required this.shortd,
  });
}
