import 'package:flutter/material.dart';

class AlertSample extends StatelessWidget {
  const AlertSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: (){
              showDialog(
                context: context, 
                builder: ((BuildContext con) {
                  return AlertDialog(
                    title: const Text("Dialog Title"),
                    content: Container(
                      child: const Text("Dialog Content")
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(), 
                        child: const Text("OK")
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(), 
                        child: const Text("Close")
                      )
                    ],
                  );
                })
                );
            },
            child: const Text("Text 1"),
          )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
