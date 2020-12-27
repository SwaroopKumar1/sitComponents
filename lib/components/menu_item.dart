import 'package:flutter/material.dart';
import 'package:sit_app/resources/color.dart';
import 'package:sit_app/themes/themes.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const MenuItem({
    Key key,
    this.icon,
    this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:  EdgeInsets.all(MyPadding.s4),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: MyColor.primaryLight,
              size: 18,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
