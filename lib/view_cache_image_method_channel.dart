import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'view_cache_image_platform_interface.dart';

/// An implementation of [ViewCacheImagePlatform] that uses method channels.
class MethodChannelViewCacheImage extends ViewCacheImagePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('view_cache_image');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
