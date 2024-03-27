import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JsonSample extends StatefulWidget {
  const JsonSample({super.key});

  @override
  State<JsonSample> createState() => _JsonSampleState();
}

class _JsonSampleState extends State<JsonSample> {

  static Future loadJson() async {
    final String response = await rootBundle.loadString("assets/data/users.json");
    final data = await json.decode(response);
    
    return data["users"];
  }

  Future userList = loadJson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test App"),
      ),
      body: Container(
        child: FutureBuilder(
          future: userList,
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(15),
                    child: Text("${snapshot.data[index]['id']} : ${snapshot.data[index]['username']}"),
                  );
                });
            } else if(snapshot.hasError) {
              return const Center(
                child: Text("Error"),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
