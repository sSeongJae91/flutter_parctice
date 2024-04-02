import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverPodStlSample extends StatelessWidget {
  const RiverPodStlSample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RiverPod Example",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RiverpodSample()
    );
  }
}

class RiverpodSample extends ConsumerWidget {
  RiverpodSample({Key? key}) : super(key: key);
  final counterProvider = StateNotifierProvider((ref) => Counter());
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final count = ref.watch(counterProvider);

    ref.listen(counterProvider, ((prev, next) {
      print("현재 상태 : $prev, $next");
    }));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod")
      ),
      body: Center(
        child: Column(
          children: [
            Text("Count: ${count.toString()}"),
            TextButton(
              onPressed: () => ref.watch(counterProvider.notifier).increment(), 
              child: const Text("증가하기"))
          ],
        ),
      )
    );
  }
}

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() => state++;
}