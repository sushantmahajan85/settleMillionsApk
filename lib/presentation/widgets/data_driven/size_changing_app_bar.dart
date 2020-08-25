import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openflutterecommerce/config/theme.dart';
import 'package:openflutterecommerce/data/model/filter_rules.dart';
import 'package:openflutterecommerce/data/model/sort_rules.dart';
import 'package:openflutterecommerce/presentation/features/products/products.dart';
import 'package:openflutterecommerce/presentation/features/products/views/visual_filter.dart';
import 'package:openflutterecommerce/presentation/widgets/independent/view_options.dart';

class SizeChangingAppBar extends StatelessWidget {
  final String title;
  final FilterRules filterRules;
  final SortRules sortRules;
  final bool isListView;
  final Function(FilterRules) onFilterRulesChanged;
  final Function(SortRules) onSortRulesChanged;
  final VoidCallback onViewChanged;

  const SizeChangingAppBar(
      {Key key,
      this.title,
      @required this.filterRules,
      this.sortRules,
      this.isListView = true,
      this.onFilterRulesChanged,
      this.onSortRulesChanged,
      this.onViewChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(

      //used to make appbar of bigger size than normal
      // Main property of sliver app bar
      expandedHeight: AppSizes.app_bar_expanded_size,
      title: Center(
        child: Text(title,
        style: TextStyle(fontSize: 17),
          ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search,
          color: AppColors.darkBlack,),
          onPressed: null, //TODO add search
        )
      ],

      //floating parameter controls if the appBar reappears.
      floating: false,
      primary: true,

      //  The property snap can only be set to true if floating is also true.
      snap: false,
      pinned: true,
      /*bottom: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: ,
      ),*/

       // Main property of sliver app bar
      //  This widget is stacked behind the toolbar and the tab bar. It's height will be the same as the app bar's overall height.
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            //   child: Text(
            //     title ?? 'Loading...',
            //     style: Theme.of(context).textTheme.caption,
            //   ),
            // ),
            Container(
              height: 30,
              child: VisualFilter(
                  filterRules?.hashTags, filterRules?.selectedHashTags,
                  (updateValue, isSelected) {
                BlocProvider.of<ProductsBloc>(context).add(
                    ProductChangeHashTagEvent(updateValue, isSelected));
              }),
            ),
            OpenFlutterViewOptions(
              sortRules: sortRules,
              filterRules: filterRules,
              isListView: isListView,
              onChangeViewClicked: onViewChanged,
              onFilterChanged: onFilterRulesChanged,
              onSortChanged: onSortRulesChanged,
            ),
          ],
        ),
      ),
    );
  }
}

class SizeChangingAppBarWithoutData extends StatelessWidget {
  final String title;
  final FilterRules filterRules;
  final SortRules sortRules;
  final bool isListView;
  final Function(FilterRules) onFilterRulesChanged;
  final Function(SortRules) onSortRulesChanged;
  final VoidCallback onViewChanged;

  const SizeChangingAppBarWithoutData(
      {Key key,
      this.title,
      @required this.filterRules,
      this.sortRules,
      this.isListView = true,
      this.onFilterRulesChanged,
      this.onSortRulesChanged,
      this.onViewChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(

      //used to make appbar of bigger size than normal
      // Main property of sliver app bar
      expandedHeight: AppSizes.app_bar_expanded_size - 120,
      title: Center(
        child: Text(title,
        style: TextStyle(fontSize: 17),
          ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search,
          color: AppColors.darkBlack,),
          onPressed: null, //TODO add search
        )
      ],

      //floating parameter controls if the appBar reappears.
      floating: false,
      primary: true,

      //  The property snap can only be set to true if floating is also true.
      snap: false,
      pinned: true,
      /*bottom: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: ,
      ),*/

       // Main property of sliver app bar
      //  This widget is stacked behind the toolbar and the tab bar. It's height will be the same as the app bar's overall height.
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            //   child: Text(
            //     title ?? 'Loading...',
            //     style: Theme.of(context).textTheme.caption,
            //   ),
            // ),
            // Container(
            //   height: 30,
            //   child: VisualFilter(
            //       filterRules?.hashTags, filterRules?.selectedHashTags,
            //       (updateValue, isSelected) {
            //     BlocProvider.of<ProductsBloc>(context).add(
            //         ProductChangeHashTagEvent(updateValue, isSelected));
            //   }),
            // ),
            // OpenFlutterViewOptions(
            //   sortRules: sortRules,
            //   filterRules: filterRules,
            //   isListView: isListView,
            //   onChangeViewClicked: onViewChanged,
            //   onFilterChanged: onFilterRulesChanged,
            //   onSortChanged: onSortRulesChanged,
            // ),
          ],
        ),
      ),
    );
  }
}
