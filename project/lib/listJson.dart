import 'package:flutter/material.dart';

class ListJson extends StatelessWidget {
  const ListJson({super.key});

  @override
  Widget build(BuildContext context) {


    final postList = [
      {
        "title": "Sample Title 1",
        "color": Colors.green
      },
      {
        "title": "Sample Title 2",
        "color": Colors.redAccent
      },
      {
        "title": "Sample Title 3",
        "color": Colors.amber
      },
      {
        "title": "Sample Title 4",
        "color": Colors.purpleAccent
      },
      {
        "title": "Sample Title 5",
        "color": Colors.teal
      },
      {
        "title": "Sample Title 6",
        "color": Colors.blueAccent
      }
    ];
    
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
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: ((BuildContext context, int index) {
          return postContainer(
            title: postList[index]["title"] as String,
            colorData: postList[index]["color"] as Color
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }

  
}
