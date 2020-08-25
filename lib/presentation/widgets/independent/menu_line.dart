import 'package:flutter/material.dart';
import 'package:openflutterecommerce/config/theme.dart';

class OpenFlutterMenuLine extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const OpenFlutterMenuLine(
      {Key key,
      @required this.title,
      @required this.subtitle,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: AppColors.black,
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
              fontSize: 13,
              color: AppColors.black, 
              fontWeight: FontWeight.w500),
        ),
        trailing: Icon(Icons.chevron_right),
      ),
      onTap: onTap,
    );
  }
}
