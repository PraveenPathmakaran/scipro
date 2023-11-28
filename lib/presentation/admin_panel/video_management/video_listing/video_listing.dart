import 'package:flutter/material.dart';
import 'package:scipro/presentation/admin_panel/Subscribed_std/widget/button.dart';
import 'package:scipro/presentation/admin_panel/video_management/video_grid.dart';
import 'package:scipro/presentation/widgets/responsive/responsive.dart';

class VideoListingContainer extends StatelessWidget {
    //final ScrollController _horizontalController = ScrollController();

  const VideoListingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(children: [
        Container(
          color: const Color.fromARGB(255, 207, 218, 194),
          width: double.infinity,
          height: 70,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonContainerWidget(text: "Ascending"),
              ButtonContainerWidget(text: "Descending")
            ],
          ),
        ),
     ResponsiveWebSite.isMobile(context)? const SizedBox(
      height: 500,
       
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
        width: 400,
          child: VideoListingGrid()),
      ),
    ):const SingleChildScrollView(
      child:  SizedBox(
        width: double.infinity,
        height: 500,
       // color: const Color.fromARGB(255, 223, 107, 107),
        child: VideoListingGrid(),
      ),
    ),
    ],)
    );
  }
}