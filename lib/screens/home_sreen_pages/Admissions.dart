import 'package:flutter/material.dart';
import 'package:sit_app/commons/screen_heading/screen_heading.dart';
import 'package:sit_app/components/commons/elevated_container/elevated_container.dart';
import 'package:sit_app/constants/getDepartment.dart';
import 'package:sit_app/navigation_service/navigation_service.dart';
import 'package:sit_app/navigation_service/routes.dart';
import 'package:sit_app/resources/color.dart';
import 'package:sit_app/resources/string.dart';
import 'package:sit_app/themes/themes.dart';

class Admissions extends StatelessWidget {

  final bool isAdmin;
 Admissions({
    this.isAdmin = false, });
  final List<String> optionList = [
    'Under Graduate',
    'Post Graduate',
    'Supporting Staff',
    'Patents',
    'VTU Guides',
    'Research scholars',
    'Programs',
    'Facilities',
    'Scheme & Syllabus',
    'Publications',
    'Funded Projects',
    'Other Links'
  ];
  final List onTapList = [
    Routes.aboutDepartment,
    Routes.facultyProfile,
    Routes.dept_supporting_staff,
    Routes.patents,
    Routes.vtuRegisteredGuides,
    Routes.researchScholars,
    Routes.dept_programs,
    Routes.dept_facilities,
    Routes.schemeAndSyllabus,
    Routes.publications,
    Routes.fundedProjects,
    Routes.otherLinks,
  ];
  final List onTapListAdmin = [
    Routes.aboutDepartmentAdmin,
    Routes.facultyProfileAdmin,
    Routes.supportingStaffAdmin,
    Routes.patentsAdmin,
    Routes.vtuRegisteredGuidesAdmin,
    Routes.researchScholarsAdmin,
    Routes.programsAdmin,
    Routes.facilitiesAdmin,
    Routes.schemesAndSyllabusAdmin,
    Routes.publicationsAdmin,
    Routes.fundedProjectsAdmin,
    Routes.otherLinksAdmin,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/app_bg.jpg',
            ),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                MyColor.primary.withOpacity(0.1), BlendMode.dstATop),
          ),
        ),
        child: Column(
          children: [
            ScreenHeading(
              heading: MyString.admission,
              subScript: ' ',
              ctxt: context,
            ),
            Container(
              margin: EdgeInsets.all(
                MyPadding.s1,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    MyBorderRadius.large,
                  ),
                ),
              ),
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    MyBorderRadius.large,
                  ),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.75,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/admissions.jpeg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        MyBorderRadius.large,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: GridView.builder(
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: optionList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 3 / 1.75,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            isAdmin
                                ? NavigationService()
                                .pushNamed(context, onTapListAdmin[index])
                                : NavigationService()
                                .pushNamed(context, onTapList[index]);
                          },
                          child: ElevatedContainer(
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(12.0),
                              padding: EdgeInsets.only(
                                left: 4.0,
                              ),
                              child: Text(
                                optionList[index],
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: MyColor.primary,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.4,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}