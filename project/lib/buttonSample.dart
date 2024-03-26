import 'package:flutter/material.dart';

class ButtonSample extends StatelessWidget {
  const ButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 20
                  )
                ),
                onPressed: () => {print("Elevated Button")},
                child: const Text("Elevated Button"),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => {print("Text Button")},
                child: const Text("Text Button"),
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: () => {print("Outlined Button")},
                child: const Text("Outlined Button"),
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
