import 'package:flutter/material.dart';

class StackTest extends StatelessWidget {
  const StackTest({super.key});

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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.yellow,
        alignment: Alignment.topLeft,
        child: Stack(
          children: [
            Container(width: 200, height: 200, color: Colors.red),
            Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 50, left: 50),
                color: Colors.blue),
            Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 100, left: 100),
                color: Colors.green),
            Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 150, left: 150),
                color: Colors.orange)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
