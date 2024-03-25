import 'package:flutter/material.dart';

class GridViewBuilderSample extends StatelessWidget {
  const GridViewBuilderSample({super.key});

  @override
  Widget build(BuildContext context) {

    final postList = [
      {
        "number": "1",
        "color": Colors.green
      },
      {
        "number": "2",
        "color": Colors.redAccent
      },
      {
        "number": "3",
        "color": Colors.amber
      },
      {
        "number": "4",
        "color": Colors.purpleAccent
      },
      {
        "number": "5",
        "color": Colors.teal
      },
      {
        "number": "6",
        "color": Colors.blueAccent
      },
      {
        "number": "7",
        "color": Colors.lightBlue
      },
      {
        "number": "8",
        "color": Colors.deepPurple
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 12.0
        ),
        itemCount: postList.length,
        itemBuilder: ((BuildContext context, int index) {
          return postContainer(
            number: postList[index]["number"] as String,
            colorData: postList[index]["color"] as Color,
          );
        }),
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
