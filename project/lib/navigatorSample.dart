import 'package:flutter/material.dart';
import 'package:project/navigatorPage.dart';

class NavigatorSample extends StatelessWidget {
  const NavigatorSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(
            builder: (_) => const NavigatorPage()
            )),
          child: Container(
            padding: const EdgeInsets.all(15),
            color: Colors.blue,
            child: const Text("Get Started")
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
