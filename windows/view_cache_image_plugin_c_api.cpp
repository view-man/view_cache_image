#include "include/view_cache_image/view_cache_image_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "view_cache_image_plugin.h"

void ViewCacheImagePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  view_cache_image::ViewCacheImagePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
