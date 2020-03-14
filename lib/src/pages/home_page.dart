import 'package:flutter/material.dart';
import 'package:flutterlocalstorage/src/utils/preferences_user.dart';
import 'package:flutterlocalstorage/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'Home';
  final _prefs = PreferenceUser();

  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _prefs.lastPage = routeName;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('User Preference '),
        backgroundColor: (_prefs.colorSecond) ? Colors.teal : Colors.pinkAccent,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Secondary Color: ${_prefs.colorSecond}'),
          Divider(),
          Text('Gender: ${_prefs.gener}'),
          Divider(),
          Text('Username: ${_prefs.name}'),
          Divider(),
        ],
      ),
    );
  }
}
