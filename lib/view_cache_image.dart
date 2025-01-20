
import 'view_cache_image_platform_interface.dart';

class ViewCacheImage {
  Future<String?> getPlatformVersion() {
    return ViewCacheImagePlatform.instance.getPlatformVersion();
  }
}
