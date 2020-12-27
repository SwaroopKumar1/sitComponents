import 'package:flutter/material.dart';

class Department extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Image.asset(
            'assets/images/001.jpg',
            // height: height * 0.3,
            width: width * 0.99,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          child: Image.asset(
            'assets/images/002.png',
            // height: height * 0.1,
            width: width * 0.99,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          child: Image.asset(
            'assets/images/003.png',
            // height: height * 0.1,
            width: width * 0.99,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          child: Image.asset(
            'assets/images/004.png',
            // height: height * 0.1,
            width: width * 0.99,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          child: Image.asset(
            'assets/images/005.png',
            // height: height * 0.1,
            width: width * 0.99,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
