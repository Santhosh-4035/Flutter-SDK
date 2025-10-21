import 'package:bolddesk_support_sdk/bolddesk_support_sdk.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

@pragma("vm:entry-point")
class NotificationService {
  // Initialize FirebaseMessingService to listen Messages
  static firebaseMessagingInitialize() {
    onBackgroundMessage();
    onMessage();
  }

  // this used to receive message when app in background
  @pragma("vm:entry-point")
  static Future<void> backgroundHandler(RemoteMessage message) async {
    // Icon should be Drawable source 
    BolddeskSupportSdk.showNotification(message.data, "sample_app_logo");
  }

  static void onBackgroundMessage() {
    FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  }

  static Future<void> getFCMToken() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    print("FCM Token - $fcmToken");
  }

  static onMessage() {
    FirebaseMessaging.onMessage.listen((message) async {
      // Icon should be Drawable source   
      BolddeskSupportSdk.showNotification(message.data, "sample_app_logo");
    });
  }



}


