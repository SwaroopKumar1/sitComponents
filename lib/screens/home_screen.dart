import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sit_app/bloc/navigation_drawer/navigation_bloc.dart';
import 'package:sit_app/bloc/navigation_drawer/state.dart';
import 'package:sit_app/resources/color.dart';
import 'package:sit_app/screens/home_sreen_pages/about_institution.dart';
import 'package:sit_app/screens/home_sreen_pages/central_facility.dart';
import 'package:sit_app/screens/home_sreen_pages/department.dart';
import 'package:sit_app/screens/home_sreen_pages/home_screen_init.dart';
import 'package:sit_app/screens/side_bar.dart';
import 'package:sit_app/themes/themes.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isBottomBarOpen = false;

  HomeScreenBloc _homeScreenBloc = HomeScreenBloc();

  @override
  void dispose() {
    _homeScreenBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BlocProvider<HomeScreenBloc>(
        create: (context) => HomeScreenBloc(),
        child: Stack(
          children: <Widget>[
            BlocBuilder(
              bloc: _homeScreenBloc,
              builder: (context, state) {
                if (state is HomeScreenInitState) return HomeScreenInit();
                if (state is HomeScreenAboutInstitutionState)
                  return AboutInstitution();
                if (state is HomeScreenDepartmentsState) return Department();
                if (state is HomeScreenCentralFacilitiesState)
                  return CentralFacility();
                return Container();
              },
            ),
            SideBar(_homeScreenBloc),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: IconButton(
        padding: EdgeInsets.only(
          bottom: MyPadding.s1,
        ),
        icon: Icon(
          isBottomBarOpen
              ? Icons.keyboard_arrow_down_outlined
              : Icons.keyboard_arrow_up_outlined,
        ),
        color: MyColor.primaryLight,
        onPressed: swapIsBottomBarOpened,
      ),
      bottomNavigationBar:
          BottomNavigationBar(isBottomBarOpen: isBottomBarOpen),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: MyColor.primaryTheme,
      leadingWidth: 0.0,
      centerTitle: false,
      leading: Container(),
      title: Text(
        'Siddaganga Institute Of Technology',
        style: MyTheme.h5(
          fontWeight: FontWeight.w500,
          themeColor: MyColor.primaryDark,
        ),
      ),
      elevation: 1.0,
      toolbarHeight: 60.0,
      actions: [
        IconButton(
          icon: Icon(
            Icons.account_circle_sharp,
            color: MyColor.primaryDark,
          ),
          onPressed: null,
        ),
      ],
    );
  }

  void swapIsBottomBarOpened() {
    setState(() {
      isBottomBarOpen = !isBottomBarOpen;
    });
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    @required this.isBottomBarOpen,
  });

  final bool isBottomBarOpen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        BottomAppBar(
          shape: CircularNotchedRectangle(),
          elevation: 4.0,
          child: isBottomBarOpen
              ? Container(
                  padding: EdgeInsets.all(
                    MyPadding.s1,
                  ),
                  margin: EdgeInsets.only(
                    top: MyPadding.s3,
                    bottom: MyPadding.s1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Internal Links',
                        style: MyTheme.h7(
                          themeColor: MyColor.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Pay fees',
                        style: MyTheme.h7(
                          themeColor: MyColor.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Other info',
                        style: MyTheme.h7(
                          themeColor: MyColor.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Contact US',
                        style: MyTheme.h7(
                          themeColor: MyColor.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
        ),
      ],
    );
  }
}
