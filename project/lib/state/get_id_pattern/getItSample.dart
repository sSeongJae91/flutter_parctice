import 'package:flutter/material.dart';
import 'package:project/state/get_id_pattern/locator/locator.dart';
import 'package:project/state/get_id_pattern/model/album.dart';
import 'package:project/state/get_id_pattern/service/album_service.dart';

class GetItMyApp extends StatelessWidget {

  const GetItMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'GetIt 테스트',
      home: GetItSample()
    );
  }
}


class GetItSample extends StatefulWidget {
  const GetItSample({super.key});

  @override
  State<GetItSample> createState() => _GetItSampleState();
}

class _GetItSampleState extends State<GetItSample> {

  final AlbumService _service = locator<AlbumService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get It 예제"),
      ),
      body: FutureBuilder(
        future: _service.fetchAlbums(),
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            List<Album>? list = snapshot.data;
            return ListView.builder(
              itemCount: list?.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(15),
                  child: Text("${list?[index].id}: ${list?[index].title}")
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("error")
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          }
        },
      ),
    );
  }
}