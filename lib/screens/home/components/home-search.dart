import 'package:flutter/material.dart';
import '../../../constants.dart';

class HomeSearch extends SearchDelegate{
  @override
  List<Widget> buildActions(BuildContext context) {

    // TODO: implement buildActions
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: (){
          query = "";
          print('click button search');
        },
      ),
    ];

  }



  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        icon: Icon(Icons.arrow_back, color: kTextLightColor,),
        onPressed: (){
          Navigator.pop(context);
        });
  }

  String selectedResult;

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container(
      child: Center(
        child: Text(selectedResult),
      ),
    );
  }

  final List<String> listExample;
  HomeSearch(this.listExample);

  List<String> recentList =["Text 4","Text 5"];
  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String> suggestionList = [];
    query.isEmpty ?
    suggestionList = recentList : suggestionList.addAll(
        listExample.where((element) => element.contains(query),
        ));
    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.history),
            title: Text(
                suggestionList[index]
            ),
            onTap: () {
              selectedResult = suggestionList[index];
              showResults(context);
            },
          );
        });
  }
}