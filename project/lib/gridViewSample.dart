import 'package:flutter/material.dart';

class GridViewSample extends StatelessWidget {
  const GridViewSample({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: GridView(
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 12.0,
        ),
        children: [
          postContainer(number: "1", colorData: Colors.amber),
          postContainer(number: "2", colorData: Colors.greenAccent),
          postContainer(number: "3", colorData: Colors.blueAccent),
          postContainer(number: "4", colorData: Colors.redAccent)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }

  Container postContainer({String number = "0", colorData = Colors.amber}) {
    return Container(
      height:200,
      color: colorData,
      child: Center(child: Text("Box $number")),
    );
  }
}
