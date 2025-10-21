import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'bolddesk_support_sdk_platform_interface.dart';

/// An implementation of [BolddeskSupportSdkPlatform] that uses method channels.
class MethodChannelBolddeskSupportSdk extends BolddeskSupportSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('bolddesk_support_sdk');

  @override
  Future<void> showHome() async {
    await methodChannel.invokeMethod('showHomeDashboard');
  }

  @override
  Future<void> showNotification(Map<String, dynamic> body, String icon) async {
    await methodChannel.invokeMethod('showNotification', {
      'body': body,
      'icon': icon,
    });
  }
}
