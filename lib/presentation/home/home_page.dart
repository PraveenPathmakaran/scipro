import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro/presentation/resources/assets_manager.dart';
import 'package:scipro/presentation/resources/color_manager.dart';
import 'package:scipro/presentation/widgets/common_button_widget.dart';
import 'package:scipro/presentation/widgets/primary_font_widget.dart';

class Scipro extends StatelessWidget {
  const Scipro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary, // ba,ckgroundColor: Colors.black,
      // appBar: AppBar(
      //   toolbarHeight: 100,
      //   automaticallyImplyLeading: false,
      //   elevation: 0,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Container(
      //         width: MediaQuery.of(context).size.width / 3,
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Image.asset(
      //               'assests/images/fg.png',
      //               height: 100,
      //               width: 100,
      //               // color: socilMediIconColor,
      //               //Color(0xFF17BDB5),
      //             ),
      //             Row(
      //               children: [
      //                 Icon(Icons.phone),
      //                 SizedBox(
      //                   width: 10,
      //                 ),
      //                 GoogleMonstserratWidgets(
      //                   text: '+91 9048900024',
      //                   fontsize: 15,
      //                 ),
      //               ],
      //             ),
      //             Row(
      //               children: [
      //                 Icon(Icons.mail),
      //                 SizedBox(
      //                   width: 10,
      //                 ),
      //                 GoogleMonstserratWidgets(
      //                   text: 'info@scipro.in',
      //                   fontsize: 15,
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //       Row(
      //         children: [
      //           TextButton(
      //               onPressed: () {},
      //               child: GoogleMonstserratWidgets(
      //                 text: 'Login',
      //                 fontsize: 20,
      //                 fontWeight: FontWeight.bold,
      //               ))
      //         ],
      //       )
      //     ],
      //   ),
      //   backgroundColor: const Color.fromARGB(255, 255, 64, 0),
      // ),
      body:
          //  CustomScrollView(slivers: <Widget>[
          //   SliverAppBar(
          //     expandedHeight: 200.0,
          //     pinned: true,
          //     flexibleSpace: FlexibleSpaceBar(
          //       title: Text('Scrollable Dropdown App Bar'),
          //       background: Image.network(
          //         'https://example.com/your_image.jpg', // Replace with your image URL
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     actions: [
          //       IconButton(
          //         icon: Icon(Icons.arrow_drop_down),
          //         onPressed: () {
          //           // Add your dropdown menu logic here
          //           // For example, you can show a BottomSheet or a PopupMenuButton.
          //         },
          //       ),
          //     ],
          //   ),]),
          ListView(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              color: ColorManager.primary,
              width: MediaQuery.of(context).size.width / 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    ImageAssets.scipro,
                    height: 100,
                    width: 100,
                    // color: socilMediIconColor,
                    //Color(0xFF17BDB5),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: '+91 9048900024',
                        fontsize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      // MyHoverText(
                      //   text: 'Hover me!',
                      //   defaultColor: Colors.black,
                      //   hoverColor: Colors.blue,
                      // ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GoogleMonstserratWidgets(
                        text: 'info@scipro.in',
                        fontWeight: FontWeight.bold,
                        fontsize: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  color: ColorManager.primary,
                  height: 40,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: CommonButtonWidget(
                        color: Colors.green,
                        text: 'Login',
                        textColor: Colors.white),
                  ),
                ),
                // TextButton(
                //     onPressed: () {},
                //     child: GoogleMonstserratWidgets(
                //       text: 'Login',
                //       fontsize: 20,
                //       fontWeight: FontWeight.bold,
                //     ))
              ],
            )
          ]),
          Stack(
            children: [
              Container(
                height: 800,
                color: ColorManager.primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 500,
                      height: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryFontWidget(
                              text: 'Your Dream Job is\ncloser than you Think',
                              fontSize: 40,
                              fontweight: FontWeight.bold,
                              color: Colors.white),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'The Industry Oriented Concept Being Unique,\nFocuses Onprofile Mapping, Skill Gap Analysis,\nIndustry Analysis and Training the Students',
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.6)),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          ImageAssets.homePageModel,
                        ),
                        // Positioned(
                        //   bottom: 0,
                        //   right: 0,
                        //   child: Container(
                        //     width: 200,
                        //     height: 100,
                        //     child: CustomPaint(
                        //       painter: SemiCirclePainter(),
                        //     ),
                        //   ),
                        // )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: -200,
                right: -200,
                child: Container(
                  width: 200,
                  height: 100,
                  child: CustomPaint(
                    painter: SemiCirclePainter(),
                  ),
                ),
              )
            ],
          ),
          Text('data')
        ],
      ),
    );
  }
}

class SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = ColorManager.homePageSecondary
      ..style = PaintingStyle.fill;

    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width * 3),
      -pi, // Starting angle (negative pi to start from the left side)
      pi / 2,
      true, // Clockwise
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class MyHoverText extends StatefulWidget {
  final String text;
  final Color defaultColor;
  final Color hoverColor;

  MyHoverText({
    required this.text,
    required this.defaultColor,
    required this.hoverColor,
  });

  @override
  _MyHoverTextState createState() => _MyHoverTextState();
}

class _MyHoverTextState extends State<MyHoverText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onHover(true),
      onExit: (_) => onHover(false),
      child: Text(
        widget.text,
        style: TextStyle(
          color: isHovered ? widget.hoverColor : widget.defaultColor,
          fontSize: 20.0,
        ),
      ),
    );
  }

  void onHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}

// ignore_for_file: must_be_immutable

class GoogleMonstserratWidgets extends StatelessWidget {
  String text;
  double fontsize;
  FontWeight? fontWeight;
  double? letterSpacing;
  Color? color;
  TextOverflow? overflow;
  GoogleMonstserratWidgets({
    required this.text,
    required this.fontsize,
    this.fontWeight,
    this.color,
    this.letterSpacing,
    this.overflow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: 1,
      style: GoogleFonts.montserrat(
        letterSpacing: letterSpacing,
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
