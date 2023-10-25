import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/widgets/card/family_card.dart';
import 'package:pankajtrust_app/presentation/student/widgets/cardMainLayout.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardMainLayout(
          CardMainLayoutheight: 1500,
          title: 'Family Details',
          cardData: FamilyCard(
            mybool: false,
          ),
        ),
      ],
    );
  }
}