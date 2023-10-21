import 'package:elearn/items.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  Home createState() => Home();
}

class Home extends State<MyHome> {
  int currentIndex = 0;
  PageController? _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].image as String,
                          height: 200,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          contents[i].title as String,
                          style: const TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          contents[i].discription as String,
                          textAlign: TextAlign.center,
                          style:
                              const TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(contents.length,
                                (index) => buildDot(index, context)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          margin: const EdgeInsets.all(40),
                          child: TextButton(
                            onPressed: () {
                              if (currentIndex == contents.length - 1) {
                                Navigator.of(context).pushNamed('/login');
                              }
                              _controller?.nextPage(
                                  duration: Duration(milliseconds: 100),
                                  curve: Curves.bounceIn);
                            },
                            child: Text(
                              currentIndex == contents.length - 1
                                  ? "Let's Start"
                                  : "Next",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                backgroundColor:
                                    Theme.of(context).primaryColor),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 20 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
