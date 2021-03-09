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
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage('https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                radius: 40.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Anthony Nguyen',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text('skycloud1096@gmail.com',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14.0
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

        //Here you place your menu items
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home Page', style: TextStyle(fontSize: 16, color: kTextLightColor)),
          onTap: () {
            // Here you can give your route to navigate

          },
        ),
        ListTile(
            title: Text(
                "My Profile", style: TextStyle(fontSize: 16, color: kTextLightColor)),
            leading: Icon(Icons.person),
            onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.history),
          title: Text(
            "History", style: TextStyle(fontSize: 16, color: kTextLightColor),
          ),
          onTap: (){},
        ),
        ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              "Settings", style: TextStyle(fontSize: 16, color: kTextLightColor),
            ),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            "Logout", style: TextStyle(fontSize: 16, color: kTextLightColor),
          ),
          onTap: (){},
        ),
      ],
    );
  }
}