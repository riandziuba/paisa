import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../common/enum/box_types.dart';

const String themeModeKey = 'key_theme_mode';
const String appColorKey = 'key_app_color';
const String dynamicColorKey = 'keydynamicColor';
const String pushNotificationKey = 'key_push_notification';
const String biometricKey = 'key_biometric';
const String userNameKey = 'user_name_key';
const String userLoginKey = 'user_login_key';
const String userImageKey = 'user_image_key';
const String userLanguageKey = 'user_laguage_key';
const String scheduleTime = 'schedule_time_key';

abstract class SettingsService {
  Future<void> setThemeMode(ThemeMode themeMode);
  Future<ThemeMode> themeMode();

  Future<void> setUpdateNotification(bool mode);
  Future<bool> notification();

  Future<void> setBiometric(bool isOn);
  Future<bool> biometric();

  Future<void> setThemeColor(Color color);
  Future<Color> themeColor();

  Future<void> setDynamicColor(bool dynamicColor);
  Future<bool> dynamicColor();

  Future<String> userName();
  Future<void> setUserName(String name);

  Future<bool> isLoggedIn();
  Future<void> setLoggedIn(bool isLogin);

  Future<String> userImage();
  Future<void> setUserImage(String name);

  Future<Locale> language();
  Future<void> setLanguage(Locale locale);
}

class SettingsServiceImpl implements SettingsService {
  late final box = Hive.box(BoxType.settings.stringValue);

  @override
  Future<String> userName() async {
    return box.get(userNameKey, defaultValue: 'Name');
  }

  @override
  Future<void> setUserName(String name) async {
    await box.put(userNameKey, name);
  }

  @override
  Future<bool> isLoggedIn() async {
    return box.get(userLoginKey, defaultValue: false) ?? false;
  }

  @override
  Future<void> setLoggedIn(bool isLogin) async {
    await box.put(userLoginKey, isLogin);
  }

  @override
  Future<String> userImage() async {
    return box.get(userImageKey, defaultValue: '');
  }

  @override
  Future<void> setUserImage(String name) async {
    await box.put(userImageKey, name);
  }

  @override
  Future<Locale> language() async {
    return Locale(box.get(userLanguageKey, defaultValue: 'INR'));
  }

  @override
  Future<void> setLanguage(Locale locale) async {
    await box.put(userLanguageKey, locale.languageCode);
  }

  @override
  Future<void> setThemeMode(ThemeMode themeMode) async {
    await box.put(themeModeKey, themeMode.index);
  }

  @override
  Future<ThemeMode> themeMode() async {
    return ThemeMode.values[box.get(themeModeKey, defaultValue: 0)];
  }

  @override
  Future<void> setUpdateNotification(bool mode) async {
    await box.put(pushNotificationKey, mode);
  }

  @override
  Future<bool> notification() async {
    return box.get(pushNotificationKey, defaultValue: false);
  }

  @override
  Future<void> setBiometric(bool isOn) async {
    await box.put(biometricKey, isOn);
  }

  @override
  Future<bool> biometric() async {
    return box.get(biometricKey, defaultValue: false);
  }

  @override
  Future<void> setThemeColor(Color color) async {
    await box.put(appColorKey, color.value);
  }

  @override
  Future<Color> themeColor() async {
    final colorInt = box.get(appColorKey, defaultValue: 0xFF795548);
    return Color(colorInt);
  }

  @override
  Future<void> setDynamicColor(bool dynamicColor) async {
    await box.put(dynamicColorKey, dynamicColor);
  }

  @override
  Future<bool> dynamicColor() async {
    return box.get(dynamicColorKey, defaultValue: false);
  }
}
