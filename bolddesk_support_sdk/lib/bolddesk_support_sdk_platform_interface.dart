import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'bolddesk_support_sdk_method_channel.dart';

abstract class BolddeskSupportSdkPlatform extends PlatformInterface {
  /// Constructs a BolddeskSupportSdkPlatform.
  BolddeskSupportSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static BolddeskSupportSdkPlatform _instance =
      MethodChannelBolddeskSupportSdk();

  /// The default instance of [BolddeskSupportSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelBolddeskSupportSdk].
  static BolddeskSupportSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BolddeskSupportSdkPlatform] when
  /// they register themselves.
  static set instance(BolddeskSupportSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> showHome() {
    throw UnimplementedError('showHome() has not been implemented.');
  }

  Future<void> showNotification(Map<String, dynamic> body, String notificationIcon);
}
