import 'package:flutter/material.dart';
import 'package:scipro/presentation/resources/color_manager.dart';
import 'package:scipro/presentation/widgets/google_fonts/google_popins.dart';

class ButtonContainerWidget extends StatelessWidget {
  final String text;
  
   const ButtonContainerWidget({
   required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 30,
        width: 130,
        decoration: const BoxDecoration(
          color:ColorManager.themeColorBlue,
        ),
        child: Center(
          child: GooglePoppinsWidgets(
              text: text,
              color: Colors.white,
              fontsize: 12,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// warningShowDilogueBox(
//     {required BuildContext context,
//     required String title,
//     required String discripition,
//     required void Function()? onPressed}) {
//   return showDialog(
//     context: context,
//     barrierDismissible: false, // user must tap button!
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text(title),
//         content: SingleChildScrollView(
//           child: ListBody(
//             children: <Widget>[Text(discripition)],
//           ),
//         ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: onPressed,
//             child: const Text('ok'),
//           ),
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: const Text('cancel'),
//           ),
//         ],
//       );
//     },
//   );
// }
