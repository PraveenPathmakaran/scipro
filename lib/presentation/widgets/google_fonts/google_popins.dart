import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GooglePoppinsWidgets extends StatelessWidget {
 final String text;
 final double fontsize;
 final FontWeight? fontWeight;
 final Color? color;
 final TextAlign? textAlign;
 final double?textScaleFactor;
 const  GooglePoppinsWidgets({
    required this.text,
    required this.fontsize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.textScaleFactor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      
      text,
      textAlign:textAlign ,
      // overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        
        
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: color,
      
      ),
        textScaleFactor: textScaleFactor,
    );
  }
}
