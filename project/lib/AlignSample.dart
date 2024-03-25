import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AlignSample extends StatelessWidget {
  const AlignSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Container(
        child: Stack( // column으로 할경우 child간 column이 다름
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.purple,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.teal,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.lime,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.indigo,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.lightBlue,
              ),
            )
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
