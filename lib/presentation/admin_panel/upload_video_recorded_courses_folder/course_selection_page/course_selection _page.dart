import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDropdownTextField extends StatefulWidget {
  const CourseDropdownTextField({super.key, required this.courseController});

  final TextEditingController courseController;

  @override
  State<CourseDropdownTextField> createState() =>
      CourseDropdownTextFieldState();
}

class CourseDropdownTextFieldState extends State<CourseDropdownTextField> {
  late TextEditingController courseName;

  List<String> dropdownList = <String>[
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten'
  ];

  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });

    // Perform your function when the TextField gains focus
    if (_isFocused) {
      showOverlay();
    } else {
      hideOverlay();
    }
  }

  OverlayEntry? entry;
  final layerLink = LayerLink();

  void showOverlay() {
    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    entry = OverlayEntry(
      builder: (context) => Positioned(
          width: size.width,
          child: CompositedTransformFollower(
              link: layerLink,
              showWhenUnlinked: false,
              offset: Offset(0, size.height + 10),
              child: buildOverlay())),
    );
    overlay.insert(entry!);
  }

  void hideOverlay() {
    entry?.remove();
    entry = null;
  }

  Widget buildOverlay() =>
      NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification? notification) {
          notification!.disallowIndicator();
          return true;
        },
        child: Container(
            clipBehavior: Clip.hardEdge,
            height: 42,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView.separated(
                padding: const EdgeInsets.all(0),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      courseName.text = dropdownList[index];
                      hideOverlay();
                      _focusNode.unfocus();
                    },
                    child: Container(
                        padding: EdgeInsets.all(10),
                        child: DefaultTextStyle(
                          style: const TextStyle(),
                          child: Text(
                            dropdownList[index],
                            style: GoogleFonts.robotoCondensed(
                                textStyle: const TextStyle(letterSpacing: 0.4),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: Colors.grey),
                          ),
                        )),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 0,
                    thickness: 3,
                  );
                },
                itemCount: dropdownList.length)),
      );

  @override
  void initState() {
    super.initState();
    courseName = TextEditingController();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    courseName.dispose();
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: layerLink,
      child: TextFormField(
        keyboardType: TextInputType.none,
        readOnly: true,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.menu_book_rounded),
            suffixIcon: Icon(Icons.arrow_drop_down_rounded),
            labelText: "courseText",
            hintText: "courseText",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)))),
        controller: courseName,
        focusNode: _focusNode,
        onChanged: (value) {
          widget.courseController.text = value;
        },
      ),
    );
  }
}
