import 'package:flutter/material.dart';
import 'package:project/photo_view/photo_view.dart';

class PhotoViewSample extends StatefulWidget {
  const PhotoViewSample({super.key});

  @override
  State<PhotoViewSample> createState() => _PhotoViewSampleState();
}

class _PhotoViewSampleState extends State<PhotoViewSample> {
  List<String> imagePaths = [
    'https://cdn.pixabay.com/photo/2023/04/30/09/43/flower-7960192_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/04/30/22/01/ocean-7961695_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/05/21/07/59/iceberg-8008071_1280.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: ListView.builder(
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return PhotoViewPage(
                      imagePaths: imagePaths, currentIndex: index);
                }));
              },
              child: Image(
                image: NetworkImage(imagePaths[index]),
              ),
            );
          },
        ));
  }
}