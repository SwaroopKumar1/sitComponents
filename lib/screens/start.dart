import 'package:flutter/material.dart';
import 'package:sit_app/navigation_service/navigation_service.dart';
import 'package:sit_app/navigation_service/routes.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2.5,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: RaisedButton(
              onPressed: () {
                //NavigationService.instance.pushNamed(context, Routes.dummy);
                //Todo : implement here
              },
              child: Text("Dummy"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: RaisedButton(
              onPressed: () {
                NavigationService.instance.pushNamed(context, Routes.test);
              },
              child: Text("Test Sample"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: RaisedButton(
              onPressed: () {
                NavigationService.instance.pushNamed(context, Routes.home);
              },
              child: Text("Home"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: RaisedButton(
              onPressed: () {
                NavigationService.instance.pushNamed(context, Routes.facultyProfile);
              },
              child: Text("Faculty profile"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: RaisedButton(
              onPressed: () {
                NavigationService.instance.pushNamed(context, Routes.departmentGrid);
              },
              child: Text("DepartmentGrid"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: RaisedButton(
              onPressed: () {
                NavigationService.instance.pushNamed(context, Routes.Trainingandplacement);
              },
              child: Text("Training & Placement"),
            ),
          ),
        ],
      ),
    );
  }
}
