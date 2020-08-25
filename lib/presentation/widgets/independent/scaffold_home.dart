//Scaffold for Open Flutter E-commerce App
//Author: openflutterproject@gmail.com
//Date: 2020-02-06

import 'package:flutter/material.dart';
import 'package:openflutterecommerce/config/theme.dart';

import '../widgets.dart';

class OpenFlutterScaffoldHome extends StatelessWidget {
  final Color background;
  final String title;
  final Widget body;
  final int bottomMenuIndex;
  final List<String> tabBarList;
  final TabController tabController;

  const OpenFlutterScaffoldHome(
      {Key key,
      this.background,
      @required this.title,
      @required this.body,
      @required this.bottomMenuIndex,
      this.tabBarList,
      this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tabBars = <Tab>[];
    var _theme = Theme.of(context);
    if (tabBarList != null) {
      for (var i = 0; i < tabBarList.length; i++) {
        tabBars.add(Tab(key: UniqueKey(), text: tabBarList[i]));
      }
    }
    return Scaffold(
      backgroundColor: background,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'SideBar',
                style: TextStyle(fontSize: 40, color: AppColors.white),
              ),
              decoration: BoxDecoration(
                color: AppColors.primary,
              ),
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(fontSize: 18, color: AppColors.darkBlack),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Categories',
                style: TextStyle(fontSize: 18, color: AppColors.darkBlack),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 18, color: AppColors.darkBlack),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
          leading: Builder(
            builder: (ctx) => IconButton(
              icon: Icon(Icons.menu),
              color: AppColors.white,
              onPressed: () {
                Scaffold.of(ctx).openDrawer();
              },
            ),
          ),
          backgroundColor: AppColors.secondary,
          title: Text(
            'Home Page',
            style: TextStyle(fontSize: 18, color: AppColors.white),
          ), // TODO add app icon in place of text title
          elevation: 8,
          actions: <Widget>[
            Row(children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: AppColors.white,
                ),
                onPressed: () {}, //TODO add notification functionality
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: AppColors.white,
                ),
                onPressed: () {}, //TODO add search
              ),
            ])
          ]),
      body: body,
      bottomNavigationBar: OpenFlutterBottomMenu(bottomMenuIndex),
    );
  }
}
