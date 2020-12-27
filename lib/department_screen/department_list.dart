import 'package:flutter/material.dart';
import 'package:sit_app/resources/color.dart';
import 'departmentNameContainer.dart';
import 'package:sit_app/constants/constant.dart';

class Department extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Department List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColor.primary,
          leadingWidth: 0.0,
          centerTitle: true,
          leading: Container(),
          title: Text(
            'Departments',
          ),
          elevation: 1.0,
          toolbarHeight: 60.0,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          // Generate 18 widgets that display their department in the List.
          children: List.generate(
            Constant.noOfDepartments,
            (index) {
              return ContainerBox(index);
            },
          ),
        ),
      ),
    );
  }
}
