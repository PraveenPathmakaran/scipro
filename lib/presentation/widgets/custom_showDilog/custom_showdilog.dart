import 'package:flutter/material.dart';
import 'package:scipro/presentation/resources/color_manager.dart';
import 'package:scipro/presentation/widgets/back_container/back_container.dart';
import 'package:scipro/presentation/widgets/google_fonts/google_popins.dart';

customShowDilogBox(
    {required BuildContext context,
    required String title,
    required List<Widget> children,
    String? actiontext,
    required bool doyouwantActionButton,
    void Function()? actiononTapfuction}) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GooglePoppinsWidgets(
                  text: title, fontsize: 13, fontWeight: FontWeight.w600),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: BackButtonContainerWidget(),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: children,
            ),
          ),
          actions: doyouwantActionButton == true
              ? <Widget>[
                  GestureDetector(
                    onTap: actiononTapfuction,
                    child: Container(
                      height: 40,
                      width: 250,
                      decoration: const BoxDecoration(
                        color: ColorManager.themeColorBlue,
                      ),
                      child: Center(
                        child: GooglePoppinsWidgets(
                            text: actiontext ?? 'ok',
                            color: ColorManager.cwhite,
                            fontsize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ]
              : null);
    },
  );
}
