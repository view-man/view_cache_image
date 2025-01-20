import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'view_cache_image_method_channel.dart';

abstract class ViewCacheImagePlatform extends PlatformInterface {
  /// Constructs a ViewCacheImagePlatform.
  ViewCacheImagePlatform() : super(token: _token);

  static final Object _token = Object();

  static ViewCacheImagePlatform _instance = MethodChannelViewCacheImage();

  /// The default instance of [ViewCacheImagePlatform] to use.
  ///
  /// Defaults to [MethodChannelViewCacheImage].
  static ViewCacheImagePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ViewCacheImagePlatform] when
  /// they register themselves.
  static set instance(ViewCacheImagePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
