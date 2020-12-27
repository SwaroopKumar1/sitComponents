import 'package:flutter/material.dart';
import 'package:sit_app/navigation_service/routes.dart';
import 'package:sit_app/screens/abc.dart';
import 'package:sit_app/screens/department/faculty_profile.dart';
import 'package:sit_app/screens/home_screen.dart';
import 'package:sit_app/screens/splash.dart';
import 'package:sit_app/screens/start.dart';
import 'package:sit_app/department_screen/department_list.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => Splash());
      case Routes.start:
        return MaterialPageRoute(builder: (_) => Start());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.facultyProfile:
        return MaterialPageRoute(builder: (_) => FacultyProfileScreen());
      case Routes.departmentGrid:
        return MaterialPageRoute(builder: (_) => Department());
      case Routes.Trainingandplacement:
        return MaterialPageRoute(builder: (_) => FacultyProfileScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text(
                      'No route defined for ${settings.name}',
                    ),
                  ),
                ));
    }
  }
}
