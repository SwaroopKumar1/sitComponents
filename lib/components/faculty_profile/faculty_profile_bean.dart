import 'package:flutter/cupertino.dart';
import 'package:sit_app/constants/enums.dart';

class FacultyProfileBean {
  final String imageURL;
  final String name;

  final Designation designation;
  final String qualification;
  final String email;
  final String phone;

  FacultyProfileBean({
    this.imageURL,
    @required this.name,
    @required this.designation,
    @required this.qualification,
    @required this.email,
    @required this.phone,
  });

  FacultyProfileBean fromJSON(Map<dynamic, dynamic> json) {
    return FacultyProfileBean(
      imageURL: json['imageURL'],
      name: json['name'],
      designation: json['designation'],
      qualification: json['qualification'],
      email: json['email'],
      phone: json['phone'],
    );
  }

  Map<dynamic, dynamic> toJSON() {
    return {
      'imageURL': imageURL,
      'name': name,
      'designation': designation,
      'qualification': qualification,
      'email': email,
      'phone': phone,
    };
  }
}
