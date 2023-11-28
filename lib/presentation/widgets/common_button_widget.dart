import 'package:flutter/material.dart';
import 'package:scipro/presentation/home/home_page.dart';

class CommonButtonWidget extends StatelessWidget {
  CommonButtonWidget({
    super.key,
    required this.color,
    required this.text,
    required this.textColor,
  });

  Color color;
  String text;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        // Add your button click logic here
      },
      color: color,
      textColor: textColor,
      child: GoogleMonstserratWidgets(
        text: text,
        fontsize: 15,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
