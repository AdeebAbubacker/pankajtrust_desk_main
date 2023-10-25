import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/student/widgets/drop_down_menu.dart';
import 'package:pankajtrust_app/presentation/student/widgets/input_label.dart';

// ignore: must_be_immutable
class LabelcumDropDownMenu extends StatelessWidget {
  final int maxlines;
  String mytext;
  final double padding;
  LabelcumDropDownMenu({this.maxlines = 1, super.key, required this.mytext, this.padding = 5});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        InputLabel(mytext: mytext),
        Container(
            width: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromARGB(255, 136, 133, 133),
                  width: 1.0,
                ),
                color: const Color.fromARGB(255, 255, 255, 255)),
            child:  InpuText(maxlines: maxlines,)),
      ],
    );
  }
}
