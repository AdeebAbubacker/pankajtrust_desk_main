// -------------------- 1st Card ------------------------------------------

// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/widgets/enterDOB.dart';
import 'package:pankajtrust_app/presentation/widgets/enterSex.dart';
import 'package:pankajtrust_app/presentation/widgets/label_cum_dropdownmenu.dart';
import 'package:pankajtrust_app/presentation/widgets/spacer_height.dart';

class CardData1 extends StatefulWidget {
  bool mybool;

  final width;
  CardData1({
    super.key,
    this.width,
    required this.mybool,
  });

  @override
  State<CardData1> createState() => _CardData1State();
}

class _CardData1State extends State<CardData1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        LabelcumDropDownMenu(mytext: 'Name'),
        const HeightSpacer(height: 14),
        const EnterSex(),
        const HeightSpacer(height: 14),
        const DOBPicker(),
        const HeightSpacer(height: 14),
        LabelcumDropDownMenu(
          mytext: 'Address',
          maxlines: 3,
        ),
        const HeightSpacer(height: 14),
        LabelcumDropDownMenu(mytext: 'Phone no'),
        const HeightSpacer(height: 14),
        LabelcumDropDownMenu(mytext: 'email'),
      ]),
    );
  }
}
