import 'package:flutter/material.dart';
import 'package:project/notification/notification.dart';

class NotificationSample extends StatefulWidget {
  const NotificationSample({super.key});

  @override
  State<NotificationSample> createState() => _NotificationSampleState();
}

class _NotificationSampleState extends State<NotificationSample> {

  @override
  void initState() {
    FlutterLocalNotification.init();
    Future.delayed(const Duration(seconds: 3), FlutterLocalNotification.requestNotificationPermission());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification sample")
      ),
      body: Center(
        child: TextButton(
          onPressed: () => FlutterLocalNotification.showNotification(),
          child: const Text("알림 보내기"),
        ),
      )
    );
  }
}