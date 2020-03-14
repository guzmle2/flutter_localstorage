
import 'package:flutter/material.dart';
import 'package:flutterlocalstorage/src/pages/home_page.dart';
import 'package:flutterlocalstorage/src/pages/setting_page.dart';

class MenuWidget extends StatelessWidget {
  MenuWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/original.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            onTap: () {
//              Navigator.pop(context);
//              Navigator.pushNamed(context, SettingsPage.routeName);
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
            title: Text('Home'),
            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ),
          ListTile(
            onTap: () {
//              Navigator.pop(context);
//              Navigator.pushNamed(context, SettingsPage.routeName);
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            },
            title: Text('Setting'),
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
