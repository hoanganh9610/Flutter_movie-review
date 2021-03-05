import 'package:flutter/material.dart';
import 'package:movie_review/screens/menu/home_menu.dart';

import '../../constants.dart';
import 'components/home_body.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final GlobalKey<ScaffoldState> scaffoldKey =
  new GlobalKey<ScaffoldState>();

  TextEditingController _searchQuery;
  bool _isSearching = false;
  String searchQuery = "Search query";

  @override
  void initState() {
    super.initState();
    _searchQuery = new TextEditingController();
  }

  void _startSearch() {
    print("open search box");
    ModalRoute
        .of(context)
        .addLocalHistoryEntry(new LocalHistoryEntry(onRemove: _stopSearching));

    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearching() {
    _clearSearchQuery();

    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearchQuery() {
    print("close search box");
    setState(() {
      _searchQuery.clear();
      updateSearchQuery("Search query");
    });
  }

  Widget _buildSearchField() {
    return new TextField(
      controller: _searchQuery,
      autofocus: true,
      decoration: const InputDecoration(
        hintText: 'Search...',
        border: InputBorder.none,
        hintStyle: const TextStyle(color: kTextLightColor),
      ),
      style: const TextStyle(color: kTextLightColor, fontSize: 16.0),
      onChanged: updateSearchQuery,
    );
  }

  void updateSearchQuery(String newQuery) {

    setState(() {
      searchQuery = newQuery;
    });
    print("search query " + newQuery);
  }

  List<Widget> _buildActions() {

    if (_isSearching) {
      return <Widget>[
        new IconButton(
          icon: const Icon(Icons.clear, color: kTextLightColor,),
          onPressed: () {
            if (_searchQuery == null || _searchQuery.text.isEmpty) {
              Navigator.pop(context);
              return;
            }
            _clearSearchQuery();
          },
        ),
      ];
    }

    return <Widget>[
      new IconButton(
        icon: const Icon(Icons.search, color: kTextLightColor,),
        onPressed: _startSearch,
      ),
    ];
  }

  var menuButton= IconButton(
    padding: EdgeInsets.only(left: kDefaultPadding),
    icon: Icon(Icons.menu, color: kTextLightColor,),
    onPressed: () {
      scaffoldKey.currentState.openDrawer();
    },
  );
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
        title: _isSearching ? _buildSearchField() : null,
      leading: _isSearching ? const BackButton(color: kTextLightColor,) : menuButton,
      actions: _buildActions()
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: HomeBody(),
        drawer: Drawer(
          child: HomeMenu(),
        )
    );
  }
}
