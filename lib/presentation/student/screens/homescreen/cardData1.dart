// -------------------- 1st Card ------------------------------------------

// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/widgets/enterDOB.dart';
import 'package:pankajtrust_app/presentation/widgets/horizontalRadioBtn.dart';
import 'package:pankajtrust_app/presentation/widgets/label_email.dart';
import 'package:pankajtrust_app/presentation/widgets/label_inputText.dart';
import 'package:pankajtrust_app/presentation/widgets/labul_NumericalText.dart';
import 'package:pankajtrust_app/presentation/widgets/spacer_height.dart';
import 'package:pankajtrust_app/presentation/widgets/verticalRadioBtn.dart';

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
        LabelInputText(mytext: 'Name'),
        const HeightSpacer(height: 14),
        horizontalRadioBtn(
          steps: [
            Content(choiceLabel: 'Male'),
            Content(choiceLabel: 'Female'),
          ],
          title: 'Gender',
        ),
        const HeightSpacer(height: 14),
        const DOBPicker(),
        const HeightSpacer(height: 14),
        LabelInputText(
          mytext: 'Address',
          maxlines: 3,
        ),
        const HeightSpacer(height: 14),
        LabelNumericalText(mytext: 'Phone no'),
        const HeightSpacer(height: 14),
        // LabelInputText(mytext: 'email'),
        LabelEmail(labelText: 'email'),
      ]),
    );
  }
}
