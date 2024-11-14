import 'package:flutter_test/flutter_test.dart';
import 'package:button_animation/button_animation_platform_interface.dart';
import 'package:button_animation/button_animation_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockButtonAnimationPlatform with MockPlatformInterfaceMixin implements ButtonAnimationPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ButtonAnimationPlatform initialPlatform = ButtonAnimationPlatform.instance;

  test('$MethodChannelButtonAnimation is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelButtonAnimation>());
  });

  // test('getPlatformVersion', () async {
  //   ButtonAnimation buttonAnimationPlugin = ButtonAnimation();
  //   MockButtonAnimationPlatform fakePlatform = MockButtonAnimationPlatform();
  //   ButtonAnimationPlatform.instance = fakePlatform;

  //   expect(await buttonAnimationPlugin.getPlatformVersion(), '42');
  // });
}
