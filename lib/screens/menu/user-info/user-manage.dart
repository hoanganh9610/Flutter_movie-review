import 'package:flutter/material.dart';

import '../../../constants.dart';

class UserManage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back, color: kTextLightColor,), onPressed: (){
            Navigator.of(context).pop();
          },),
          backgroundColor: Colors.white,
          title: Text("Manage Film", style: TextStyle(color: kTextLightColor),),
        ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Name',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Age',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Designation',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Mohit')),
                DataCell(Text('23')),
                DataCell(Text('Associate Software Developer')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Akshay')),
                DataCell(Text('25')),
                DataCell(Text('Software Developer')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Deepak')),
                DataCell(Text('29')),
                DataCell(Text('Team Lead ')),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
       // onPressed: _incrementCounter,
        //key: keyButton,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

}