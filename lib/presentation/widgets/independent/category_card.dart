
import 'package:flutter/material.dart';
import 'package:openflutterecommerce/config/theme.dart';

class Category{
  Color begin;
  Color end;
  String category;
  String image;

  Category(this.begin, this.end, this.category, this.image);


}

class CategoryCard extends StatelessWidget {

  final Category category;

  const CategoryCard({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 80,
                width: 90,
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    category.category,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                    fontWeight:FontWeight.w500,
                    color: AppColors.darkBlack,
                    fontSize: 15
                    ),
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 90,
                decoration: BoxDecoration(
                    gradient:RadialGradient(colors: [category.begin,category.end],
                        center: Alignment(0, 0),
                        radius: 0.8,
                        focal: Alignment(0, 0),
                        focalRadius: 0.1)
                ),
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Image.asset(category.image),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
