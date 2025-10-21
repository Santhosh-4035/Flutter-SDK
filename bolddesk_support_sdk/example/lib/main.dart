import 'package:bolddesk_support_sdk/bolddesk_support_sdk.dart';
import 'package:bolddesk_support_sdk_example/firebase_options.dart';
import 'package:bolddesk_support_sdk_example/notification_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize firebase services
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    sound: true,
    alert: true,
    badge: true,
  );
  // Request Notification permission when user enter into application
  await FirebaseMessaging.instance.requestPermission();
  // Initialize Firebase Messaging services to receive Notifications
  NotificationService.firebaseMessagingInitialize();
  // Get FCM Token Based
  NotificationService.getFCMToken();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Plugin example app')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                BolddeskSupportSdk.showHome();
              },
              child: Text("Show Home"),
            ),
          ],
        ),
      ),
    );
  }
}
