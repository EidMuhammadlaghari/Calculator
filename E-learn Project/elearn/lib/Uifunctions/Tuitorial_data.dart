import 'dart:html';

import 'package:flutter/material.dart';

class MyTuitorialData extends StatefulWidget {
  @override
  State<MyTuitorialData> createState() => _MyTuitorialScreenState();
}

class _MyTuitorialScreenState extends State<MyTuitorialData> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as String;
    return SingleChildScrollView(
      child: Container(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  data,
                  style: TextStyle(
                      color: Colors.blueGrey.shade300, fontSize: 30.0),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                  'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in '
                  'reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                  'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia '
                  'deserunt mollit anim id est laborum.'
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                  'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in '
                  'reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                  'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia '
                  'deserunt mollit anim id est laborum.'
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                  'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in '
                  'reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                  'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia '
                  'deserunt mollit anim id est laborum.',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.asset(
                    '/images/head.jpg',
                    // fit: BoxFit.cover,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
