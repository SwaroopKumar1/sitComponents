import 'package:flutter/material.dart';
import 'package:sit_app/navigation_service/navigation_service.dart';
import 'package:sit_app/navigation_service/routes.dart';
import 'package:sit_app/screens/departmentInParticular.dart';
import 'textAndIconClass.dart';
import 'package:sit_app/resources/color.dart';

class ContainerBox extends StatelessWidget {
  final int departmentNumber;
  ContainerBox(this.departmentNumber);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        elevation: 3.0,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  flex: 4,
                  child: IconButton(
                      icon: TextAndIcon(departmentNumber).getDepartmentIcon(),
                      alignment: Alignment.center,
                      color: MyColor.primary,
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    new DepartmentInParticular(
                                        departmentNumber)));
                      })),
              Expanded(
                child: Text(
                  TextAndIcon(departmentNumber).getDepartmentName(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: MyColor.primary),
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(10),
          color: MyColor.theme,
        ),
        borderRadius: BorderRadius.circular(23.0),
        color: MyColor.theme,
      ),
      margin: EdgeInsets.all(4),
    );
  }
}
