import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/student/widgets/cardMainLayout.dart';
import 'package:pankajtrust_app/presentation/student/widgets/enterDOB.dart';
import 'package:pankajtrust_app/presentation/student/widgets/enterSex.dart';
import 'package:pankajtrust_app/presentation/student/widgets/label_cum_dropdownmenu.dart';
import 'package:pankajtrust_app/presentation/student/widgets/myAppBar.dart';

import 'package:pankajtrust_app/presentation/student/widgets/spacer_height.dart';

class HomeScreenLayout extends StatefulWidget {
  const HomeScreenLayout({
    super.key,
  });

  @override
  State<HomeScreenLayout> createState() => _HomeScreenLayoutState();
}

class _HomeScreenLayoutState extends State<HomeScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(96.0), // Adjust the height as needed
        child: myAppBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            children: [
              CardMainLayout(CardMainLayoutheight: 690,
                title: 'Personal Info',
                cardData: CardData1(
                  mybool: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// -------------------- 1st Card ------------------------------------------

// ignore: must_be_immutable
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
