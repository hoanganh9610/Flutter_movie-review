import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_review/screens/menu/user-info/user-history.dart';
import 'package:movie_review/screens/menu/user-info/user-info.dart';
import 'package:movie_review/screens/menu/user-info/user-manage.dart';

class MyAccount extends StatefulWidget {
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  bool isEdit = false;
  int _selectedIndex = 0;
  Widget _myHistory = UserHistory();
  Widget _manageFilm = UserManage();
  Widget _myProfile = UserInfo();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  Widget getBody( )  {
    if(this._selectedIndex == 0) {
      return this._myProfile;
    } else if(this._selectedIndex==1) {
      return this._manageFilm;
    } else {
      return this._myHistory;
    }
  }

  void onTapHandler(int index)  {
    this.setState(() {
      this._selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_outlined),
            label: 'Manage',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

