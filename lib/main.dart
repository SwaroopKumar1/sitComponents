import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sit_app/navigation_service/router.dart';
import 'package:sit_app/resources/color.dart';
import 'navigation_service/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(
    [
      SystemUiOverlay.bottom,
    ],
  );
  runApp(
    SITApp(),
  );
}

class SITApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: MyColor.primaryTheme,
      ),
      title: "SIT App",
      initialRoute: Routes.splash,
      onGenerateRoute: MyRouter.generateRoute,
    );
  }
}
