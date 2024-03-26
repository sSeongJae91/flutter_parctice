import 'package:flutter/material.dart';

class GradiendSample extends StatelessWidget {
  const GradiendSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue[100] as Color,
                  Colors.blue[300] as Color,
                  Colors.blue[500] as Color
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.1, 0.4, 0.9]
              )
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Colors.amber[100] as Color,
                  Colors.amber[300] as Color,
                  Colors.amber[500] as Color
                ],
                radius: 1.0,
                stops: const [0.1, 0.4, 0.9]
              )
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
