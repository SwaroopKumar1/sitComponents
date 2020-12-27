import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sit_app/bloc/navigation_drawer/event.dart';
import 'package:sit_app/bloc/navigation_drawer/navigation_bloc.dart';
import 'package:sit_app/components/menu_item.dart';

import 'package:rxdart/rxdart.dart';
import 'package:sit_app/resources/color.dart';
import 'package:sit_app/themes/themes.dart';

class SideBar extends StatefulWidget {
  final HomeScreenBloc bloc;
  SideBar(this.bloc);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> with TickerProviderStateMixin {
  AnimationController _animationController;
  StreamController<bool> isSidebarOpenedStreamController;
  Stream<bool> isSidebarOpenedStream;
  StreamSink<bool> isSidebarOpenedSink;

  final _animationDuration = const Duration(milliseconds: 400);

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSidebarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;
    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSidebarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return StreamBuilder<bool>(
      initialData: false,
      stream: isSidebarOpenedStream,
      builder: (context, isSideBarOpenedAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isSideBarOpenedAsync.data ? 0 : -screenWidth,
          right: isSideBarOpenedAsync.data ? 0 : screenWidth - 120,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  color: MyColor.primary,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        // ListTile(
                        //   title: Text(
                        //     "Prateek",
                        //     style: TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 20,
                        //         fontWeight: FontWeight.w500),
                        //   ),
                        //   subtitle: Text(
                        //     "www.techieblossom.com",
                        //     style: TextStyle(
                        //       color: Colors.white,
                        //       fontSize: 16,
                        //     ),
                        //   ),
                        //   leading: CircleAvatar(
                        //     child: Icon(
                        //       Icons.perm_identity,
                        //       color: Colors.white,
                        //     ),
                        //     radius: 40,
                        //   ),
                        // ),
                        // Divider(
                        //   height: 15,
                        //   thickness: 0.5,
                        //   color: Colors.white.withOpacity(0.3),
                        //   indent: 32,
                        //   endIndent: 32,
                        // ),
                        MenuItem(
                          icon: Icons.home,
                          title: "About Institution ",
                          onTap: () {
                            onIconPressed();
                            widget.bloc.add(HomeScreenDepartmentsEvent());
                          },
                        ),
                        MenuItem(
                          icon: Icons.person,
                          title: "Department",
                          onTap: () {
                            onIconPressed();
                          },
                        ),
                        MenuItem(
                          icon: Icons.shopping_basket,
                          title: "Admissions",
                          onTap: () {
                            onIconPressed();
                          },
                        ),
                        MenuItem(
                          icon: Icons.card_giftcard,
                          title: "Central Facilities",
                        ),
                        MenuItem(
                          icon: Icons.settings,
                          title: "Research Info",
                        ),
                        MenuItem(
                          icon: Icons.exit_to_app,
                          title: "Prospectus",
                        ),
                        MenuItem(
                          icon: Icons.exit_to_app,
                          title: "Training and placement",
                        ),
                        MenuItem(
                          icon: Icons.exit_to_app,
                          title: "Announcement",
                        ),
                        MenuItem(
                          icon: Icons.exit_to_app,
                          title: "News and events",
                        ),
                        MenuItem(
                          icon: Icons.exit_to_app,
                          title: "Results",
                        ),
                        MenuItem(
                          icon: Icons.exit_to_app,
                          title: "Appointments",
                        ),
                        MenuItem(
                          icon: Icons.exit_to_app,
                          title: "Appointments",
                        ),
                        MenuItem(
                          icon: Icons.exit_to_app,
                          title: "Appointments",
                        ),
                        MenuItem(
                          icon: Icons.exit_to_app,
                          title: "Appointments",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.9),
                child: GestureDetector(
                  onTap: () {
                    onIconPressed();
                  },
                  child: ClipPath(
                    clipper: CustomMenuClipper(),
                    child: Container(
                      padding: EdgeInsets.all(MyPadding.s1),
                      width: 35,
                      height: 110,
                      color: MyColor.primary,
                      alignment: Alignment.centerLeft,
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_close,
                        color: MyColor.primaryTheme,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

/*
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isOpen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 2.0,
        child: Container(
          padding: EdgeInsets.all(MyPadding.s2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              MyBorderRadius.medium,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.0,
              ),
              Text(
                'About institution',
                style: MyTheme.h4(
                  themeColor: MyColor.primary,
                ),
              ),
              Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                'Departments',
                style: MyTheme.h4(
                  themeColor: MyColor.primary,
                ),
              ),
              Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                'Research Info',
                style: MyTheme.h4(
                  themeColor: MyColor.primary,
                ),
              ),
              Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                'Placements',
                style: MyTheme.h4(
                  themeColor: MyColor.primary,
                ),
              ),
              Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                'Contact Us',
                style: MyTheme.h4(
                  themeColor: MyColor.primary,
                ),
              ),
              Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 25.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(
              isOpen ? Icons.arrow_drop_down : Icons.arrow_drop_up_sharp,
            ),
            onPressed: () {
              setState(
                () {
                  isOpen = !isOpen;
                },
              );
            },
          ),
          isOpen
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        icon: Icon(Icons.person_rounded), onPressed: null),
                    IconButton(
                        icon: Icon(Icons.person_rounded), onPressed: null),
                    IconButton(
                        icon: Icon(Icons.person_rounded), onPressed: null),
                    IconButton(
                        icon: Icon(Icons.person_rounded), onPressed: null),
                  ],
                )
              : Container(),
        ],
      ),
      appBar: AppBar(
        title: Text(
          'Siddaganga Institute Of Technology',
          style: MyTheme.h6(
            themeColor: MyColor.black,
          ),
        ),
      ),
      body: isOpen
          ? Container(
              margin: EdgeInsets.all(MyPadding.s8),
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.8,
              color: MyColor.primary,
            )
          : Container(
              margin: EdgeInsets.all(MyPadding.s8),
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.8,
              color: MyColor.primaryDark,
            ),
    );
  }
}


 */
