import 'package:flutter/material.dart';
import 'package:scipro/presentation/resources/color_manager.dart';
import 'package:scipro/presentation/widgets/google_fonts/google_popins.dart';
import 'package:scipro/presentation/widgets/responsive/responsive.dart';

import '../../../widgets/textformfeildWidget.dart';

class CreateRecordedCourses extends StatelessWidget {
  const CreateRecordedCourses({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: ButtonWidget(
                    text: 'Category',
                  ),
                ),
              GestureDetector(
                onTap: () {
                  CreateRecordedCoursesDialog(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,right: 10),
                  child: ButtonWidget(
                    text: 'Create Rec Courses',
                  ),
                ),
                
              ),
             
            ],
          ),
        ],
      ),
    );
  }

  void CreateRecordedCoursesDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GooglePoppinsWidgets(
                text: "Create Recorded Courses",
                fontsize: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ButtonWidget(
                  text: 'Back',
                ),
              )
            ],
          ),
          content: ResponsiveWebSite.isMobile(context)
              ? SingleChildScrollView(
                  child: Column(
                    children: List.generate(8, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: TextFormFiledContainerWidget(
                          hintText: "Create Course",
                          title: "Create Course",
                          width: double.infinity,
                        ),
                      );
                    }),
                  ),
                )
              : Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 300,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    child: recCousesWidget[0]),
                                Expanded(
                                    child: recCousesWidget[1]),
                                Expanded(
                                    child: recCousesWidget[2]),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    child:recCousesWidget[3]),
                                Expanded(
                                    child: recCousesWidget[4]),
                                Expanded(
                                    child:recCousesWidget[5]),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                recCousesWidget[6],
                               recCousesWidget[7]
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
          actions: <Widget>[ButtonWidget(text: "Create")],
        );
      },
    );
  }
}

class ButtonWidget extends StatelessWidget {
  String text;
  ButtonWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorManager.themeColorBlue,
        borderRadius: BorderRadius.horizontal(),
      ),
      width: 100,
      height: 30,
      child: Center(
        child: GooglePoppinsWidgets(
          color: ColorManager.cwhite,
          fontWeight: FontWeight.bold,
          text: text,
          fontsize: 14,
        ),
      ),
    );
  }
}
List<Widget> recCousesWidget= [
  Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: TextFormFiledContainerWidget(
                                      hintText: "Create Course",
                                      title: "Create Couse",
                                      width: 200),
                                ),////////////////////1
                                 Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: TextFormFiledContainerWidget(
                                      hintText: "Facultie",
                                      title: "Facultie",
                                      width: 200),
                                ),/////////////////2
                                 Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: TextFormFiledContainerWidget(
                                      hintText: "Course Fee",
                                      title: "Course Fee",
                                      width: 200),
                                ),////////////3
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: TextFormFiledContainerWidget(
                                      hintText: "Duration",
                                      title: "Duration",
                                      width: 200),
                                ),//////////////4
                                 Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: TextFormFiledContainerWidget(
                                      hintText: "Course ID",
                                      title: "Course ID",
                                      width: 200),
                                ), /////////////5
                                 Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: TextFormFiledContainerWidget(
                                      hintText: "Posted Date",
                                      title: "Posted Date",
                                      width: 200),
                                ),/////////////////////6
                                 Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: TextFormFiledContainerWidget(
                                      hintText: "Posted Time",
                                      title: "Posted Time",
                                      width: 200),
                                ),/////////////7
                                 Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: TextFormFiledContainerWidget(
                                      hintText: "Category ",
                                      title: "Category",
                                      width: 200),
                                ),/////////8

  
];
