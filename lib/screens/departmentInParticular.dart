import 'package:flutter/material.dart';
import 'package:sit_app/department_screen/textAndIconClass.dart';

class DepartmentInParticular extends StatefulWidget {
  final index;
  DepartmentInParticular(this.index);
  @override
  _DepartmentInParticularState createState() => _DepartmentInParticularState();
}

class _DepartmentInParticularState extends State<DepartmentInParticular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TextAndIcon(widget.index).getDepartmentName()),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SingleChildScrollView(
              child: DrawerHeader(
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 2,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'About Department',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Programs',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Faculty Profile',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'VTU Registered Guides',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Supporting Staff',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
