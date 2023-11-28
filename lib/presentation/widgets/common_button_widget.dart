import 'package:flutter/material.dart';
import 'package:scipro/presentation/home/home_page.dart';

class CommonButtonWidget extends StatelessWidget {
 const CommonButtonWidget({
    super.key,
    required this.color,
    required this.text,
    required this.textColor,
  });

 final Color color;
 final String text;
 final Color textColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        // Add your button click logic here
      },
      color: color,
      textColor: textColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: GoogleMonstserratWidgets(
        text: text,
        fontsize: 15,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
