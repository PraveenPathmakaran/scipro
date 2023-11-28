import 'package:flutter/material.dart';
import 'package:scipro/presentation/admin_panel/Subscribed_std/subscribed_student.dart';
import 'package:scipro/presentation/admin_panel/video_management/video_listing.dart';
import 'package:scipro/presentation/resources/color_manager.dart';
import 'package:scipro/presentation/widgets/google_fonts/google_popins.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';

class AdminPanelPage extends StatefulWidget {
  const AdminPanelPage({super.key});

  @override
  State<AdminPanelPage> createState() => _AdminPanelPageState();
}

class _AdminPanelPageState extends State<AdminPanelPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SidebarDrawer(
        body: ListView(
          children: [
            AppBar(
              backgroundColor: ColorManager.themeColorBlue,
              leading: const DrawerIcon(),
            ),
            pages[selectedIndex]
          ],
        ),
        drawer: ListView(children: [
          SideBarMenuItemsWidget(
            selectedIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ]),
      ),
    );
  }
}

List<Widget> pages = [
  Container(
    child: const Center(
      child: Text("data"),
    ),
  ),
 const VideoListingContainer(),
  Container(
    child: const Center(
      child: Text("data"),
    ),
  ),
     const SubscribedStd()
];

class SideBarMenuItemsWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;
  const SideBarMenuItemsWidget({
    required this.selectedIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 26, 47, 90),
      height: 800,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return ColoredBox(
              color: selectedIndex == index
                  ? ColorManager.themeColorBlue
                  : Colors.transparent,
              child: ListTile(
                contentPadding: const EdgeInsets.only(
                  left: 10,
                ),
                onTap: () {
                  onTap.call(index);
                },
                iconColor: ColorManager.cwhite.withOpacity(0.6),
                leading: Icon(
                  sideMenuICons[index],
                  size: 13.2,
                ),
                title: GooglePoppinsWidgets(
                  text: sideMenu[index],
                  fontsize: 12.5,
                  color: ColorManager.cwhite.withOpacity(0.6),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 00,
            );
          },
          itemCount: sideMenu.length),
    );
  }
}

List<String> sideMenu = [
  //'Staff Management',
  'Client Management',
  'Video Management',
  'Article Management',
  "Subscribed Students",
  // 'Students Manage',
  // 'Students Payment',
  // 'Employee Manage',
  // 'Bill Manage',
  // 'Notice Board',
  // 'Settings',
  // 'Rules',
];
List<IconData> sideMenuICons = [
  Icons.people,
  Icons.people,
  Icons.video_settings,
  Icons.art_track_rounded,
  // Icons.confirmation_number_outlined,
  // Icons.people,
  // Icons.attach_money_outlined,
  // Icons.people,
  // Icons.receipt_long,
  // Icons.keyboard_alt_outlined,
  // Icons.settings,
  // Icons.gavel,
];
