import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget postContainer({String title = "", Color colorData = Colors.blue}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height:200,
            color: colorData
          ),
      ],
    );
  }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          postContainer(title: "Title 1", colorData: Colors.yellow),
          postContainer(title: "Title 2", colorData: Colors.red),
          postContainer(title: "Title 3", colorData: Colors.green),
          postContainer(title: "Title 4", colorData: Colors.amber),
          postContainer(title: "Title 5", colorData: Colors.indigo)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }

  
}
