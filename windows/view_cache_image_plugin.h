#ifndef FLUTTER_PLUGIN_VIEW_CACHE_IMAGE_PLUGIN_H_
#define FLUTTER_PLUGIN_VIEW_CACHE_IMAGE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace view_cache_image {

class ViewCacheImagePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ViewCacheImagePlugin();

  virtual ~ViewCacheImagePlugin();

  // Disallow copy and assign.
  ViewCacheImagePlugin(const ViewCacheImagePlugin&) = delete;
  ViewCacheImagePlugin& operator=(const ViewCacheImagePlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace view_cache_image

#endif  // FLUTTER_PLUGIN_VIEW_CACHE_IMAGE_PLUGIN_H_
