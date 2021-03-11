import 'package:flutter/material.dart';
import 'package:movie_review/screens/menu/help-center.dart';
import 'package:movie_review/screens/menu/notification.dart';
import 'package:movie_review/screens/menu/setting.dart';
import 'package:movie_review/screens/menu/user-info/my-account.dart';

import '../../constants.dart';

class HomeMenu extends StatefulWidget {
  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  bool isLogin = true;
  bool isShowMenuItem= false;
  @override
  Widget build(BuildContext context) {
    Future<String> createAlertDialog(BuildContext context) {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Logout"),
              content: Text("Are you want to exit ?"),
              actions: [
                Row(
                  children: [
                    MaterialButton(
                      elevation: 5.0,
                      onPressed: () {},
                      child: Text(
                        "OK",
                        style: TextStyle(
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    MaterialButton(
                      elevation: 5.0,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Cancel"),
                    )
                  ],
                )
              ],
            );
          });
    }

    Widget _getInfoLogin(BuildContext context) {
      return isLogin
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                  radius: 40.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Anthony Nguyen',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'skycloud1096@gmail.com',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 14.0),
                    ),
                  ],
                )
              ],
            )
          :
          MaterialButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/user.png"),
                  radius: 40.0,
                ),
                Text("Login / Register", style: TextStyle(fontSize: 12, color: Colors.white),),
                IconButton(icon: Icon(Icons.navigate_next, color: Colors.white,))
              ],
            ),
              onPressed: (){}
          );
    }

    ListView _getMenuLogin(){
      if(isLogin){
        isShowMenuItem = true;
      }
      else{
        isShowMenuItem = false;
      }
      return
      ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: _getInfoLogin(context)),
            Visibility(
              visible: true,
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home',
                      style: TextStyle(fontSize: 16, color: kTextLightColor)),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
            ),
            Visibility(
              visible: isShowMenuItem,
              child: ListTile(
                title: Text("My Account",
                    style: TextStyle(fontSize: 16, color: kTextLightColor)),
                leading: Icon(Icons.person),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MyAccount()));
                },
              ),
            ),
            Visibility(
              visible: isShowMenuItem,
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications',
                    style: TextStyle(fontSize: 16, color: kTextLightColor)),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => NotificationPage()));
                  // Here you can give your route to navigate
                },
              ),
            ),
            Visibility(
              visible: true,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings',
                    style: TextStyle(fontSize: 16, color: kTextLightColor)),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Setting()));
                },
              ),
            ),
            Visibility(
              visible: true,
              child: ListTile(
                leading: Icon(Icons.support_agent_outlined),
                title: Text('Help Center',
                    style: TextStyle(fontSize: 16, color: kTextLightColor)),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HelpCenter()));
                },
              ),
            ),
            Visibility(
              visible: isShowMenuItem,
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  "Logout",
                  style: TextStyle(fontSize: 16, color: kTextLightColor),
                ),
                onTap: () {
                  createAlertDialog(context);
                },
              )
            ),
          ]);
    }
    // TODO: implement build
    return _getMenuLogin();
  }
}
