// Category Tile with image
// Author: openflutterproject@gmail.com
// Date: 2020-02-06

import 'package:flutter/material.dart';
import 'package:openflutterecommerce/config/theme.dart';
import 'package:openflutterecommerce/data/model/category.dart';

import '../extensions/commerce_image_view.dart';

class OpenFlutterCategoryTile extends StatelessWidget {
  final ProductCategory category;
  final double height;
  final double width;

  const OpenFlutterCategoryTile(
      {Key key, this.category, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _theme = Theme.of(context);
    return Padding(
        padding: EdgeInsets.only(bottom: AppSizes.sidePadding),
        child: Container(
            padding: EdgeInsets.only(left: AppSizes.sidePadding),
            height: height,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      width: width - 208.0,
                      child:
                          Text(category.name, style: _theme.textTheme.display1)),
                ),
                Container(
                  width: 200,
                  alignment: Alignment.centerRight,
              
                  // decoration: BoxDecoration(
                  // borderRadius: BorderRadius.horizontal(left:Radius.circular(0),right: Radius.circular(12)),
                  // ),
                  //   decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.only(topRight:Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
                  //   boxShadow: [
                  //   BoxShadow(color: _theme.primaryColorLight, blurRadius: 1),
                  // ],
                  // ),
                  
                  child: ClipRRect(
                    borderRadius:BorderRadius.horizontal(left:Radius.circular(0),right: Radius.circular(12)),
                    child:Image(image: category.image.getView()),
                    ) 
              
                )
              ],
            )));
  }
}
