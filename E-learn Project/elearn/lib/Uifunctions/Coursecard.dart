import 'package:flutter/material.dart';

class MyCourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> data =
        ModalRoute.of(context)!.settings.arguments as List<String>;
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 10,
            ),
            child: Row(
              children: [
                GestureDetector(
                  // onTap: () {
                  //   Navigator.of(context).pushNamed('/detail-videos/');
                  // },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed('/video_html', arguments: data);
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.blue.shade300,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "Video",
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ),
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
                        .pushNamed('/detail-tuitorial', arguments: data);
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.blue.shade300,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "Tuitorials",
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(
          //     left: 20.0,
          //     right: 20.0,
          //     top: 20,
          // ),
          // child: Row(
          //   children: [
          //     GestureDetector(
          //       onTap: () {
          //         Navigator.of(context).pushNamed('/detail-tuitorial');
          //       },
          //       child: Container(
          //         height: 150,
          //         width: 150,
          //         color: Colors.blue.shade300,
          //         child: const Padding(
          //           padding: EdgeInsets.all(8.0),
          //           child: Center(
          //             child: Text(
          //               "Quiz",
          //               style: TextStyle(
          //                   fontSize: 24.0,
          //                   fontWeight: FontWeight.normal,
          //                   color: Colors.white),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     const SizedBox(
          //       width: 20.0,
          //     ),
          //     Container(
          //       height: 150,
          //       width: 150,
          //       color: Colors.blue.shade300,
          //       child: const Padding(
          //         padding: EdgeInsets.all(8.0),
          //         child: Center(
          //           child: Text(
          //             "Certificate",
          //             style: TextStyle(
          //                 fontSize: 24.0,
          //                 fontWeight: FontWeight.normal,
          //                 color: Colors.white),
          //           ),
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          // ),
        ],
      ),
    );
  }
}
