import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/student/screens/homescreen/cardData1.dart';
import 'package:pankajtrust_app/presentation/widgets/cardMainLayout.dart';
import 'package:pankajtrust_app/presentation/widgets/enterDOB.dart';
import 'package:pankajtrust_app/presentation/widgets/enterSex.dart';
import 'package:pankajtrust_app/presentation/widgets/label_cum_dropdownmenu.dart';
import 'package:pankajtrust_app/presentation/widgets/myAppBar.dart';

import 'package:pankajtrust_app/presentation/widgets/spacer_height.dart';

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

