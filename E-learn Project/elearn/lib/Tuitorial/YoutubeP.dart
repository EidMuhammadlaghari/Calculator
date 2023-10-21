import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyVideoProgramming extends StatefulWidget {
  @override
  State<MyVideoProgramming> createState() => _MyVideoHtmlState();
}

class _MyVideoHtmlState extends State<MyVideoProgramming> {
  // final String? videoUrl;
  final videoUrl = "https://www.youtube.com/watch?v=XegkHPNOKeI";

  late YoutubePlayerController _controller;
  // MyVideoHtml(this.videoUrl);
  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);

    _controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('programming skills'),
        ),
        body: Container(
            width: 300, // Set the width as per your requirements
            height: 200, // Set the height as per your requirements
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            )));
  }
}
