import 'package:flutter/material.dart';
class TextAndIcon {
  final int departmentNumber;
  TextAndIcon(this.departmentNumber);
  String getDepartmentName() {
    if (departmentNumber == 0)
      return 'Architecture';
    else if (departmentNumber == 1)
      return 'Biotechnology';
    else if (departmentNumber == 2)
      return 'Nanotechnology';
    else if (departmentNumber == 3)
      return 'Chemical Engineering';
    else if (departmentNumber == 4)
      return 'Civil Engineering';
    else if (departmentNumber == 5)
      return 'Computer Science and Engineering';
    else if (departmentNumber == 6)
      return 'Electrical and Electronics Engineering';
    else if (departmentNumber == 7)
      return 'Electronics and Communication Engineering';
    else if (departmentNumber == 8)
      return 'Electronics and Instrumentation Engineering';
    else if (departmentNumber == 9)
      return 'Industrial Engineering and Management';
    else if (departmentNumber == 10)
      return 'Information Science and Engineering';
    else if (departmentNumber == 11)
      return 'Mechanical Engineering';
    else if (departmentNumber == 12)
      return 'Electronics & Telecommunication Engineering';
    else if (departmentNumber == 13)
      return 'Master of Business Administration';
    else if (departmentNumber == 14)
      return 'Master of Computer Application';
    else if (departmentNumber == 15)
      return 'Chemistry';
    else if (departmentNumber == 16)
      return 'Mathematics';
    else if (departmentNumber == 17) return 'Physics';
  }

  Widget getDepartmentIcon() {
    if (departmentNumber == 0)
      return Icon(
        Icons.architecture_outlined,
        size: 40.0,
      );
    else if (departmentNumber == 1)
      return Icon(
        Icons.biotech_outlined,
        size: 40.0,
      );
    else if (departmentNumber == 2)
      return Icon(
        Icons.military_tech_outlined,
        size: 40.0,
      );
    else if (departmentNumber == 3)
      return Icon(
        Icons.science_outlined,
        size: 40.0,
      );
    else if (departmentNumber == 4)
      return Icon(
        Icons.engineering,
        size: 40.0,
      );
    else if (departmentNumber == 5)
      return Icon(
        Icons.computer_rounded,
        size: 40.0,
      );
    else if (departmentNumber == 6)
      return Icon(
        Icons.electrical_services,
        size: 40.0,
      );
    else if (departmentNumber == 7)
      return Icon(
        Icons.electrical_services,
        size: 40.0,
      );
    else if (departmentNumber == 8)
      return Icon(
        Icons.electrical_services,
        size: 40.0,
      );
    else if (departmentNumber == 9)
      return Icon(
        Icons.computer,
        size: 40.0,
      );
    else if (departmentNumber == 10)
      return Icon(
        Icons.architecture_outlined,
        size: 40.0,
      );
    else if (departmentNumber == 11)
      return Icon(
        Icons.biotech_outlined,
        size: 40.0,
      );
    else if (departmentNumber == 12)
      return Icon(
        Icons.handyman_rounded,
        size: 40.0,
      );
    else if (departmentNumber == 13)
      return Icon(
        Icons.science_outlined,
        size: 40.0,
      );
    else if (departmentNumber == 14)
      return Icon(
        Icons.computer,
        size: 40.0,
      );
    else if (departmentNumber == 15)
      return Icon(
        Icons.science_outlined,
        size: 40.0,
      );
    else if (departmentNumber == 16)
      return Icon(
        Icons.calculate_outlined,
        size: 40.0,
      );
    else if (departmentNumber == 17)
      return Icon(
        Icons.science_outlined,
        size: 40.0,
      );
  }
}
