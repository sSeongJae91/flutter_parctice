import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/state/get_x_pattern/couter_controller.dart';

class GetXSample extends StatelessWidget {
  const GetXSample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Get X Example')
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<CounterController>(
                init: CounterController(),
                builder: (_) => Text("Current Count: ${Get.find<CounterController>().counter}"),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  TextButton(onPressed: () => Get.find<CounterController>().increase(), child: const Text("증가")),
                  TextButton(onPressed: () => Get.find<CounterController>().decrease(), child: const Text("감소"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}