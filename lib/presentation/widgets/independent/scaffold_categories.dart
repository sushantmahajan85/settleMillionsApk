import 'package:flutter/material.dart';
import 'package:openflutterecommerce/config/theme.dart';

import '../widgets.dart';

class OpenFlutterScaffoldCategories extends StatelessWidget {
  final Color background;
  final String title;
  final Widget body;
  final int bottomMenuIndex;
  final List<String> tabBarList;
  final TabController tabController;

  const OpenFlutterScaffoldCategories(
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
      appBar: title != null
          ? AppBar(
            iconTheme: IconThemeData(color: AppColors.white),
            title: Text(
              title,
              style: TextStyle(color: AppColors.white),
              ), 
            backgroundColor: AppColors.secondary,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search, color: AppColors.white,), onPressed: () {})
            ],
            )
          : null,
      body: body,
      bottomNavigationBar: OpenFlutterBottomMenu(bottomMenuIndex),
    );
  }
}
