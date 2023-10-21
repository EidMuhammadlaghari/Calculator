import 'package:elearn/Uifunctions/dashboardbox.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Mydashboard extends StatefulWidget {
  @override
  State<Mydashboard> createState() => _MydashboardState();
}

class _MydashboardState extends State<Mydashboard> {
  @override
  Widget build(BuildContext context) {
    final email = ModalRoute.of(context)!.settings.arguments as String;

    Future<userData> getUser() async {
      final response = await http.get(
          Uri.parse('http://10.11.75.60:4000/api/v1/auth/user-data/$email'));

      if (response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);

        return userData(
          name: data['user']['name'],
          email: data['user']['email'], // Convert to Celsius
        );
        // List data2 = data['user'];
        // return userData(name: data['name'], email: data['email']);
      } else {
        throw Exception("Failded to Load data");
      }
    }

//  return flutter

    return Scaffold(
        body: FutureBuilder(
            future: getUser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Column(
                  children: [
                    Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(100),
                                bottomRight: Radius.circular(100))),
                        child: ListView(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 40.0, left: 20.0),
                              child: ListTile(
                                leading: const CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(
                                      'images/users.png'), // Custom leading widget
                                ), // Optional leading icon
                                title: Text(
                                  snapshot.data!.name,
                                  style: const TextStyle(
                                      fontSize: 24.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ), // Title text
                                subtitle: Text(
                                  snapshot.data!.email,
                                  style: const TextStyle(
                                      fontSize: 18.0, color: Colors.white),
                                ), // Subtitle text
                                // trailing: const Icon(
                                //     Icons.arrow_forward), // Optional trailing icon
                                onTap: () {
                                  // Action to perform when the tile is tapped
                                },
                              ),
                            ),
                          ],
                        )),
                    MyCards(), // Add more ListTiles as needed
                  ],
                );
              }
            }));
  }
}

class userData {
  final String name;
  final String email;

  userData({
    required this.name,
    required this.email,
  });
}
