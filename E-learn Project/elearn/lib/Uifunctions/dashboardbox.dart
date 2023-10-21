import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  String lang1 = "HTML";
  String lang2 = "CSS";
  String lang3 = "JavaScript";
  String lang4 = "Java";
  String lang5 = "Python";
  String lang6 = "CPP (C++)";

  @override
  Widget build(BuildContext context) {
    final email = ModalRoute.of(context)!.settings.arguments as String;
    print('email from mycards');
    print(email);
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 40.0,
            right: 20.0,
            top: 10,
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('/detail-page', arguments: [lang6, email]);
                },
                child: Container(
                  height: 130,
                  width: 130,
                  // color: Colors.brown.shade300,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset(
                      'images/l1.png',

                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('/detail-page', arguments: [lang4, email]);
                },
                child: Container(
                  height: 130,
                  width: 130,
                  // color: Colors.pink.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset(
                      'images/l2.png',

                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 40.0,
            right: 20.0,
            top: 20,
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('/detail-page', arguments: [lang1, email]);
                },
                child: Container(
                  height: 130,
                  width: 130,
                  // color: Colors.red.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset(
                      'images/l3.png',
                      // width: 60,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('/detail-page', arguments: [lang2, email]);
                },
                child: Container(
                  height: 130,
                  width: 130,
                  // color: Colors.blue.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset(
                      'images/l4.png',
                      // width: 60,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 40.0,
            right: 20.0,
            top: 20,
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('/detail-page', arguments: [lang3, email]);
                },
                child: Container(
                  height: 130,
                  width: 130,
                  // color: Colors.green.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset(
                      'images/l5.png',
                      // width: 60,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('/detail-page', arguments: [lang5, email]);
                },
                child: Container(
                  height: 130,
                  width: 130,
                  // color: Colors.amber.shade400,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset(
                      'images/l6.png',
                      // width: 60,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
