import 'bolddesk_support_sdk_platform_interface.dart';

class BolddeskSupportSdk {
  static Future<void> showHome() {
    return BolddeskSupportSdkPlatform.instance.showHome();
  }

  static Future<void> showNotification(Map<String, dynamic> body, String notificationIcon) {
    return BolddeskSupportSdkPlatform.instance.showNotification(body, notificationIcon);
  }
}
