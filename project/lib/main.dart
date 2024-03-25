import 'package:flutter/material.dart';
import 'package:project/gesture.dart';
import 'package:project/gridViewSample.dart';
import 'package:project/grieViewBuilderSample.dart';
import 'package:project/helloworld.dart';
import 'package:project/list.dart';
import 'package:project/listJson.dart';
import 'package:project/rowColumn.dart';
import 'package:project/scroll.dart';
import 'package:project/stackTest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Test Title"),
        ),
        body: Center(
          child: Wrap(
            direction: Axis.horizontal,
            children: [
              ElevatedButton(
                child: const Text('Hello World'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HelloWorld()));
                },
              ),
              ElevatedButton(
                child: const Text('Row, Column'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RowColumn()));
                },
              ),
              ElevatedButton(
                child: const Text('Stack'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StackTest()));
                },
              ),
              ElevatedButton(
                child: const Text('Gesture Detect'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Gesture()));
                },
              ),
              ElevatedButton(
                child: const Text('ListView'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const List()));
                },
              ),
              ElevatedButton(
                child: const Text('ListViewBuilder'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ListJson()));
                },
              ),
              ElevatedButton(
                child: const Text('GridView'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const GridViewSample()));
                },
              ),
              ElevatedButton(
                child: const Text('GridViewBuilder'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const GridViewBuilderSample()));
                },
              ),
              ElevatedButton(
                child: const Text('scroll'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Scroll()));
                },
              )
            ],
          ),
        ));
  }
}
