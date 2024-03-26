import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlexableSample extends StatelessWidget {
  const FlexableSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded( //expanded = flexible + FlexFit.tight
              flex: 1,
              child: Container(
                color: Colors.blue
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.green
              ),
            ),
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
