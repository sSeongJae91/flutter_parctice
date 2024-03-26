import 'package:flutter/material.dart';

class ImageSample extends StatelessWidget {
  const ImageSample({super.key});

  @override
  Widget build(BuildContext context) {
    const url = "https://cdn.pixabay.com/photo/2024/03/05/20/48/church-8615302_1280.jpg";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: const Image(
          height: 400,
          image: NetworkImage(
            url,
          ),
          fit: BoxFit.fill,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
