import 'package:flutter/material.dart';

class Gesture extends StatelessWidget {
  const Gesture({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Drawer Hader Part"),
            ),
            ListTile(
              title: Text("Menu 1"),
            )
          ],
        ),
      ),
      body: Center(
          child: GestureDetector(
        onTap: () => print("GestureDetector "),
        child: Container(width: 200, height: 200, color: Colors.yellow),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
