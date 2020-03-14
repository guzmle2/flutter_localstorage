import 'package:flutter/material.dart';
import 'package:flutterlocalstorage/src/utils/preferences_user.dart';
import 'package:flutterlocalstorage/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'Settings';

  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _colorSecond = false;
  int _gener = 1;
  String _name = 'Leonor';
  TextEditingController _textEditingController;
  final _prefs = PreferenceUser();

  @override
  void initState() {
    super.initState();
    _gener = _prefs.gener;
    _colorSecond = _prefs.colorSecond;
    _textEditingController = new TextEditingController(text: _prefs.name);
  }

  @override
  Widget build(BuildContext context) {
    _prefs.lastPage = SettingsPage.routeName;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Setting User'),
          backgroundColor:
              (_prefs.colorSecond) ? Colors.teal : Colors.pinkAccent,
        ),
        drawer: MenuWidget(),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(),
            SwitchListTile(
              value: _colorSecond,
              title: Text('Color Secundary'),
              onChanged: _setColorSecond,
            ),
            RadioListTile(
              value: 1,
              title: Text('Femenino'),
              groupValue: _gener,
              onChanged: _setSelectedGener,
            ),
            RadioListTile(
              value: 0,
              title: Text('Masculino'),
              groupValue: _gener,
              onChanged: _setSelectedGener,
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  helperText: 'This is the name',
                ),
                onChanged: _setSelectName,
              ),
            ),
          ],
        ));
  }

  void _setSelectedGener(int value) async {
    _prefs.gener = value;
    _gener = value;
    setState(() {});
  }

  void _setSelectName(String value) async {
    _prefs.name = value;
    _name = value;
    setState(() {});
  }

  void _setColorSecond(bool value) async {
    _prefs.colorSecond = value;
    _colorSecond = value;
    setState(() {});
  }
}
