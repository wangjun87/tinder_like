import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:tinder_like/utils/colors.dart';
import 'package:tinder_like/views/tabs/account.dart';
import 'package:tinder_like/views/tabs/saved.dart';

import 'tabs/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget _buildTab(IconData icon) {
      return Container(
        height: 40,
        alignment: Alignment.center,
        color: Colors.white,
        child: Icon(icon,size: 40),
      );
    }

    final appBar = AppBar(
      title: Text("Foodie",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 28),),
      centerTitle: true,
      bottom: TabBar(
        unselectedLabelColor: unselectedTabLabelColor,
        labelColor: Theme.of(context).primaryColor,
        labelPadding: EdgeInsets.only(left: 0,right: 0),
        indicatorWeight: 5,
        indicator: BoxDecoration(
          gradient: primaryGradient
        ),
        tabs: [
          _buildTab(Icons.search),
          _buildTab(Icons.star),
          _buildTab(Icons.account_circle),
        ],
      ),


    );

    final body = TabBarView(
      children: [
        SearchPage(),
        SavedPage(),
        AccountPage()
      ],
    );


    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: appBar,
        body: body,
      ),
    );
  }
}
