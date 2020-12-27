import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sit_app/components/faculty_profile/faculty_profile.dart';
import 'package:sit_app/components/faculty_profile/faculty_profile_bean.dart';
import 'package:sit_app/constants/enums.dart';
import 'package:sit_app/resources/color.dart';
import 'package:sit_app/themes/themes.dart';

class FacultyProfileScreen extends StatefulWidget {
  @override
  _FacultyProfileScreenState createState() => _FacultyProfileScreenState();
}

class _FacultyProfileScreenState extends State<FacultyProfileScreen> {
  List<FacultyProfileBean> facultyProfileBeanList = [];

  FacultyProfileBean facultyProfileBean = FacultyProfileBean(
    imageURL:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Poster-sized_portrait_of_Barack_Obama.jpg/675px-Poster-sized_portrait_of_Barack_Obama.jpg',
    name: 'Dr A B Cdefghi',
    designation: Designation.PROFESSOR,
    email: 'abcdefghij@gmail.com',
    phone: '+91-9876543210',
    qualification: 'M.Tech, Ph.D',
  );
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    facultyProfileBeanList.add(facultyProfileBean);
    facultyProfileBeanList.add(facultyProfileBean);
    facultyProfileBeanList.add(facultyProfileBean);
    facultyProfileBeanList.add(facultyProfileBean);
    facultyProfileBeanList.add(facultyProfileBean);
    facultyProfileBeanList.add(facultyProfileBean);
    facultyProfileBeanList.add(facultyProfileBean);

    return Scaffold(
      backgroundColor: MyColor.lightestGrey,
      body: Row(
        children: [
          NavigationRail(
            minWidth: 30.0,
            groupAlignment: -1.5,
            backgroundColor: MyColor.primaryTheme,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            selectedLabelTextStyle: TextStyle(
              color: MyColor.primary,
              fontSize: 13,
              letterSpacing: 0.5,
            ),
            unselectedLabelTextStyle: TextStyle(
              color: MyColor.lightGrey,
              fontSize: 12,
            ),
            destinations: [
              buildRotatedTextRailDestination("Professors"),
              buildRotatedTextRailDestination("Associate Professors"),
              buildRotatedTextRailDestination("Assistant Professors"),
              buildRotatedTextRailDestination("Visiting Professors"),
              buildRotatedTextRailDestination("Visiting Faculty"),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  FacultyUI(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: ListView.builder(
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: facultyProfileBeanList.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                          print(facultyProfileBeanList.length);
                          return FacultyProfileComponent(
                            facultyProfileBean: facultyProfileBeanList[index],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

NavigationRailDestination buildRotatedTextRailDestination(String text) {
  final double padding = 1.0;
  return NavigationRailDestination(
    icon: SizedBox.shrink(),
    label: Padding(
      padding: EdgeInsets.symmetric(
        vertical: padding,
      ),
      child: RotatedBox(
        quarterTurns: -1,
        child: Text(text),
      ),
    ),
  );
}

class FacultyUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      color: MyColor.primaryTheme,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(MyBorderRadius.medium),
        bottomLeft: Radius.circular(MyBorderRadius.medium),
      ),
      child: Container(
        padding: EdgeInsets.only(top: MyPadding.s1),
        height: 50,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Text(
          'Faculty Profile',
          style: MyTheme.large(
            themeColor: MyColor.primary,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
