import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:intl/intl.dart';

class UserInfo extends StatefulWidget{
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo>{
  TextEditingController _editingController;
  bool isEdit = false;
  DateTime _fromDate = DateTime.now();

  Widget displayName() {
    return isEdit
        ? SizedBox(
      width: 180,
      child: TextField(
        maxLines: 1,
        controller: _editingController,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
    )
        : SizedBox(
        width: 180,
        child: Text(
          'Anthony Nguyen',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20.0,
          ),
        ));
  }

  Widget _applyName() {
    return isEdit
        ? IconButton(
        icon: Icon(
          Icons.check,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            isEdit = !isEdit;
          });
          print('edit name');
        })
        : IconButton(
        icon: Icon(
          Icons.edit_outlined,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            isEdit = !isEdit;
          });
          print('ok name');
        });
  }

  String get _labelText {
    return DateFormat.yMMMd().format(_fromDate);
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final picked = await showDatePicker(
        context: context,
        initialDate: _fromDate,
        firstDate: DateTime(2015, 1),
        lastDate: DateTime(2100));
    if (picked != null && picked != _fromDate) {
      setState(() {
        _fromDate = picked;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController(text: "Anthony Nguyen");
  }

  @override
  void dispose() {
    super.dispose();
    _editingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 30),
              color: Colors.blueGrey,
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                      //Expanded(child: Text(""))
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, bottom: 30),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/user.png"),
                            radius: 40.0,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [displayName(), _applyName()],
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              )),
          ListTile(
            leading: Icon(Icons.person_outlined),
            title: Row(
              children: [
                Expanded(
                  child: Text('Name: ',
                      style: TextStyle(fontSize: 16, color: kTextLightColor)),
                ),
                Text('Anthony Nguyễn',
                    style: TextStyle(fontSize: 16, color: kTextLightColor)),
              ],
            ),
            onTap: () {
              // Here you can give your route to navigate
            },
          ),
          Divider(
            color: kTextLightColor,
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Row(
              children: [
                Expanded(
                  child: Text('Email: ',
                      style: TextStyle(fontSize: 16, color: kTextLightColor)),
                ),
                Text('skycloud1096@gmail.com',
                    style: TextStyle(fontSize: 16, color: kTextLightColor)),
              ],
            ),
            onTap: () {

            },
          ),
          Divider(
            color: kTextLightColor,
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Row(
              children: [
                Expanded(
                  child: Text('Birth day: ',
                      style: TextStyle(fontSize: 16, color: kTextLightColor)),
                ),
                Text(_labelText,
                    style: TextStyle(fontSize: 16, color: kTextLightColor)),
              ],
            ),
            onTap: () {
              _showDatePicker(context);
            },
          ),
          //_widgetOptions.elementAt(_selectedIndex)
        ],
      ),
    );
  }

}