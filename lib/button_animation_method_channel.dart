import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'button_animation_platform_interface.dart';

/// An implementation of [ButtonAnimationPlatform] that uses method channels.
class MethodChannelButtonAnimation extends ButtonAnimationPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('button_animation');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
