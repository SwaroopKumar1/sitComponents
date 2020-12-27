import 'package:flutter/material.dart';
import 'package:sit_app/components/commons/network_image/network_image_component.dart';
import 'package:sit_app/components/faculty_profile/faculty_profile_bean.dart';
import 'package:sit_app/resources/color.dart';
import 'package:sit_app/resources/string.dart';
import 'package:sit_app/themes/themes.dart';

class FacultyProfileComponent extends StatefulWidget {
  final FacultyProfileBean facultyProfileBean;

  FacultyProfileComponent({@required this.facultyProfileBean});

  @override
  _FacultyProfileComponentState createState() =>
      _FacultyProfileComponentState();
}

class _FacultyProfileComponentState extends State<FacultyProfileComponent> {
  EdgeInsetsGeometry myPadding = const EdgeInsets.only(top: 2.0, bottom: 2.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        MyPadding.s1,
      ),
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.circular(
          MyBorderRadius.large,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(
            MyBorderRadius.large,
          ),
          onTap: () {
            //TODO on tap
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(MyPadding.s3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.person_rounded),
                    Text('${widget.facultyProfileBean.name}'),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: MyPadding.s1,
                    ),
                    child: widget.facultyProfileBean.imageURL != null
                        ? MyNetworkImage(
                            imageURL: widget.facultyProfileBean.imageURL,
                          )
                        : CircleAvatar(
                            radius: MyCircleAvatarRadius.normal,
                            backgroundColor: MyColor.primaryTheme,
                          ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //   child: Container(
                        //     padding: myPadding,
                        //     child: Text(
                        //       '${designation}',
                        //       style: MyTheme.h6(
                        //         fontWeight: FontWeight.w400,
                        //         themeColor: MyColor.black,
                        //       ),
                        //       softWrap: true,
                        //       maxLines: 4,
                        //       overflow: TextOverflow.ellipsis,
                        //     ),
                        //   ),
                        // ),
                        Container(
                          padding: myPadding,
                          child: IconAndText(
                            iconData: Icons.portrait_rounded,
                            text: '${widget.facultyProfileBean.designation}',
                          ),
                        ),
                        Container(
                          padding: myPadding,
                          child: IconAndText(
                            iconData: Icons.portrait_rounded,
                            text: '${widget.facultyProfileBean.qualification}',
                          ),
                        ),
                        Container(
                          padding: myPadding,
                          child: IconAndText(
                            iconData: Icons.portrait_rounded,
                            text: '${widget.facultyProfileBean.email}',
                          ),
                        ),
                        Container(
                          padding: myPadding,
                          child: IconAndText(
                            iconData: Icons.portrait_rounded,
                            text: '${widget.facultyProfileBean.phone}',
                          ),
                        ),
                        Container(
                          padding: myPadding,
                          child: IconAndText(
                            iconData: Icons.portrait_rounded,
                            text: '${MyString.profile}',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconAndText extends StatelessWidget {
  final IconData iconData;
  final String text;

  final Color iconColor;
  final Color textColor;

  IconAndText({
    @required this.iconData,
    @required this.text,
    this.iconColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        MyPadding.s1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Icon(
              iconData,
              color: iconColor ?? MyColor.primaryLight,
              size: 16.0,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            child: Text(
              text,
              style: TextStyle(
                color: textColor ?? MyColor.darkGrey,
              ),
              softWrap: false,
              maxLines: 4,
              overflow: TextOverflow.fade,
            ),
          ),
        ],
      ),
    );
  }
}
