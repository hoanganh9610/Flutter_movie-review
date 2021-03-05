import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeMenu extends StatefulWidget{
  @override
  _HomeMenuState createState()=> _HomeMenuState();
}
class _HomeMenuState extends State<HomeMenu>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        ListTile(
            title: Text(
                "My Profile", style: TextStyle(fontSize: 16, color: kTextLightColor)),
            leading: Icon(Icons.person, color: kSecondaryColor)
        ),
        ListTile(
          leading: Icon(Icons.history, color: kSecondaryColor),
          title: Text(
            "History", style: TextStyle(fontSize: 16, color: kTextLightColor),
          ),
        ),
        ListTile(
            leading: Icon(Icons.settings, color: kSecondaryColor),
            title: Text(
              "Settings", style: TextStyle(fontSize: 16, color: kTextLightColor),
            )
        ),
        ListTile(
          leading: Icon(Icons.logout, color: kSecondaryColor),
          title: Text(
            "Logout", style: TextStyle(fontSize: 16, color: kTextLightColor),
          ),
        )
      ],
    );
  }
}