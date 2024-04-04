import "package:flutter/material.dart";
import "package:project/mvvm_design_pattern/model/album.dart";
import "package:project/mvvm_design_pattern/view_model/album_view_model.dart";
import "package:provider/provider.dart";

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late List<Album> albumList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MVVM 실습"),
      ),
      body: Consumer<AlbumViewModel>(
        builder: (context, provider, child) {
          albumList = provider.albumList;
          return ListView.builder(
            itemCount: albumList.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "${albumList[index].id}: ${albumList[index].title}",
                ),
              );
            },
          );
        },
      ),
    );
  }
}