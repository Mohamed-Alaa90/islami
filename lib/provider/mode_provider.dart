import 'package:flutter/material.dart';

class ModeProvider extends ChangeNotifier {
  bool _isLight = true;
  Locale _locale = const Locale('ar');

  set light(bool value) {
    light = value;
  }

  bool get light => _isLight;
  Locale get locale => _locale;
  void changMode() {
    if (_isLight == true) {
      _isLight = false;
      notifyListeners();
    } else if (_isLight == false) {
      _isLight = true;
      notifyListeners();
    }
  }

  void changLanguage() {
    if (_locale == const Locale('en')) {
      _locale = const Locale('ar');
    } else if (_locale == const Locale('ar')) {
      _locale = const Locale('en');
    }
    notifyListeners();
  }
}
