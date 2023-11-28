// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:scipro/presentation/resources/color_manager.dart';
import 'package:scipro/presentation/widgets/google_fonts/google_popins.dart';

class WebApplicationLogoContainer extends StatelessWidget {
  const WebApplicationLogoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 16, 36, 77),
      height: 130,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  height: 80,
                  width: 60,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        GooglePoppinsWidgets(
                          text: "S C I ",
                          fontsize: 22,
                          color: ColorManager.cwhite,
                          fontWeight: FontWeight.w600,
                        ),
                        const GooglePoppinsWidgets(
                          text: "P R O ",
                          fontsize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    GooglePoppinsWidgets(
                      text: "Vector Wind",
                      fontsize: 11,
                      color: ColorManager.cwhite.withOpacity(0.5),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: Color.fromARGB(255, 26, 47, 90),
          ),
          const SizedBox(
            height: 48,
            child: Center(
              child: GooglePoppinsWidgets(
                text: "Admin Panel",
                fontsize: 11,
                color: Color.fromARGB(255, 117, 200, 236),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
