import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/widgets/card/family_card.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/widgets/card/siblings_card.dart';
import 'package:pankajtrust_app/presentation/widgets/cardMainLayout.dart';

class FamilyScreen extends StatefulWidget {
  const FamilyScreen({super.key});

  @override
  State<FamilyScreen> createState() => _FamilyScreenState();
}

class _FamilyScreenState extends State<FamilyScreen> {
  bool siblings = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardMainLayout(
          CardMainLayoutheight: 1513,
          title: 'Family Details',
          cardData: FamilyCard(
            mybool: false,
            siblings: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    value: siblings,
                    onChanged: (value) {
                      setState(() {
                        siblings = !siblings;
                      });
                    }),
                Text(
                  'Do you have any siblings(brothers/sisters)',
                  style: kCardContentSmallStyle,
                ),
              ],
            ),
          ),
        ),
        siblings
            ? Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CardMainLayout(
                  CardMainLayoutheight: 210,
                  title: 'Siblings Details',
                  cardData: SiblingsCard(
                    mybool: false,
                  ),
                ),
              )
            : const Text(''),
      ],
    );
  }
}
