import 'package:flutter_test/flutter_test.dart';
import 'package:view_cache_image/view_cache_image.dart';
import 'package:view_cache_image/view_cache_image_platform_interface.dart';
import 'package:view_cache_image/view_cache_image_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockViewCacheImagePlatform
    with MockPlatformInterfaceMixin
    implements ViewCacheImagePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ViewCacheImagePlatform initialPlatform = ViewCacheImagePlatform.instance;

  test('$MethodChannelViewCacheImage is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelViewCacheImage>());
  });

  test('getPlatformVersion', () async {
    ViewCacheImage viewCacheImagePlugin = ViewCacheImage();
    MockViewCacheImagePlatform fakePlatform = MockViewCacheImagePlatform();
    ViewCacheImagePlatform.instance = fakePlatform;

    expect(await viewCacheImagePlugin.getPlatformVersion(), '42');
  });
}
