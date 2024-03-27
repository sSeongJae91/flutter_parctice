import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class YoutubeSample extends StatefulWidget {
  const YoutubeSample({super.key});

  @override
  State<YoutubeSample> createState() => _YoutubeSampleState();
}


class _YoutubeSampleState extends State<YoutubeSample> {

  static String youtubeId = "LJrxa5kej6A";
  final YoutubePlayerController _con = YoutubePlayerController(
    initialVideoId: youtubeId, 
    flags: const YoutubePlayerFlags(autoPlay: false)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Container(
        child: YoutubePlayer(
          controller: _con,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}