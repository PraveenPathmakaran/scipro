import 'package:flutter/material.dart';
import 'package:scipro/presentation/resources/color_manager.dart';
import 'package:scipro/presentation/widgets/common_button_widget.dart';
import 'package:scipro/presentation/widgets/common_textfield.dart';
import 'package:scipro/presentation/widgets/primary_font_widget.dart';

showd(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double? containerWidth;
  if (screenWidth > 728) {
    return showDialog(
        context: context,
        builder: (context) {
          containerWidth = 650;
          return AlertDialog(
            title: Container(
              height: 300,
              width: containerWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryFontWidget(
                      text: MediaQuery.of(context).size.width.toString(),
                      //  text: 'Sign Up',
                      fontSize: 22,
                      fontweight: FontWeight.bold,
                      color: Colors.black),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryFontWidget(
                              text: 'Email Address',
                              fontSize: 15,
                              fontweight: FontWeight.w500,
                              color: Colors.black),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: containerWidth! * 0.461,
                              child: CommonTextField(
                                  hintText: '', borderRadius: 20)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryFontWidget(
                              text: 'Password',
                              fontSize: 15,
                              fontweight: FontWeight.w500,
                              color: Colors.black),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: containerWidth! * 0.461,
                              child: CommonTextField(
                                  hintText: '', borderRadius: 20)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      width: containerWidth! * 0.461,
                      child: CommonButtonWidget(
                          color: ColorManager.primary,
                          text: 'Sign Up',
                          textColor: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  } else {
    return showDialog(
        context: context,
        builder: (context) {
          containerWidth = 500;
          return AlertDialog(
            title: Container(
              height: 300,
              width: containerWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryFontWidget(
                      text: 'Sign Up',
                      fontSize: 22,
                      fontweight: FontWeight.bold,
                      color: Colors.black),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryFontWidget(
                              text: 'Email Address',
                              fontSize: 15,
                              fontweight: FontWeight.w500,
                              color: Colors.black),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: containerWidth! * 0.461,
                              child: CommonTextField(
                                  hintText: '', borderRadius: 20)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryFontWidget(
                              text: 'Password',
                              fontSize: 15,
                              fontweight: FontWeight.w500,
                              color: Colors.black),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: containerWidth! * 0.461,
                              child: CommonTextField(
                                  hintText: '', borderRadius: 20)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      width: containerWidth! * 0.461,
                      child: CommonButtonWidget(
                          color: ColorManager.primary,
                          text: 'Sign Up',
                          textColor: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
