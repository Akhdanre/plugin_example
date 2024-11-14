import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'button_animation_method_channel.dart';

abstract class ButtonAnimationPlatform extends PlatformInterface {
  /// Constructs a ButtonAnimationPlatform.
  ButtonAnimationPlatform() : super(token: _token);

  static final Object _token = Object();

  static ButtonAnimationPlatform _instance = MethodChannelButtonAnimation();

  /// The default instance of [ButtonAnimationPlatform] to use.
  ///
  /// Defaults to [MethodChannelButtonAnimation].
  static ButtonAnimationPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ButtonAnimationPlatform] when
  /// they register themselves.
  static set instance(ButtonAnimationPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
