import 'package:flutterlocalstorage/src/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUser {
  static final PreferenceUser _instance = new PreferenceUser._internal();

  factory PreferenceUser() {
    return _instance;
  }

  PreferenceUser._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool get colorSecond => _prefs.getBool('isColorSecond') ?? false;

  set colorSecond(bool value) {
    _prefs.setBool('isColorSecond', value);
  }

  String get name => _prefs.getString('name') ?? '';

  set name(String value) {
    _prefs.setString('name', value);
  }

  String get lastPage => _prefs.getString('lastPage') ?? HomePage.routeName;

  set lastPage(String value) {
    _prefs.setString('lastPage', value);
  }

  int get gener => _prefs.getInt('gener') ?? 0;

  set gener(int value) {
    _prefs.setInt('gener', value);
  }
}
