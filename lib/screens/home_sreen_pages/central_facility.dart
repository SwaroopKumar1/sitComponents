import 'package:flutter/material.dart';
import 'package:sit_app/resources/color.dart';
import 'package:sit_app/themes/themes.dart';

class CentralFacility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'CentralFacility',
          style: MyTheme.h1(
            themeColor: MyColor.primary,
          ),
        ),
      ),
    );
  }
}
