import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';

import 'package:pankajtrust_app/package/presentation/custom_stepper.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/family_screen.dart';
import 'package:pankajtrust_app/presentation/student/screens/homescreen/cardData1.dart';
import 'package:pankajtrust_app/presentation/widgets/bankcard.dart';
import 'package:pankajtrust_app/presentation/widgets/cardMainLayout.dart';
import 'package:pankajtrust_app/presentation/widgets/vericalLine.dart';

class MyCustomStepper extends StatefulWidget {
  const MyCustomStepper({super.key});

  @override
  State<MyCustomStepper> createState() => _MyCustomStepperState();
}

class _MyCustomStepperState extends State<MyCustomStepper> {
  bool forBankAccountholder = false;
  bool forNoAccountUsers = true;
  // var mybool = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomStepper(
        steps: [
          AddStep(
            title: 'ddd',
            content: Padding(
              padding: EdgeInsets.zero,
              child: Column(
                children: <Widget>[
                  // PersonalInfo(),

                  CardMainLayout(
                    title: 'Personal Info',
                    CardMainLayoutheight: 623,
                    cardData: CardData1(
                      mybool: false,
                    ),
                    bankData: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            'Do you have bank account',
                            style: kCardContentSmallStyle,
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Checkbox(
                            value: forBankAccountholder,
                            onChanged: (value) {
                              setState(() {
                                forBankAccountholder = true;
                                forNoAccountUsers
                                    ? forNoAccountUsers = false
                                    : '';
                              });
                            }),
                        Text(
                          'yes',
                          style: kCardContentSmallStyle,
                        ),
                        const VerticalLine(),
                        Checkbox(
                            value: forNoAccountUsers,
                            onChanged: (value) {
                              setState(() {
                                forNoAccountUsers = true;
                                forNoAccountUsers
                                    ? forBankAccountholder = false
                                    : '';
                              });
                            }),
                        Text(
                          'no',
                          style: kCardContentSmallStyle,
                        ),
                      ],
                    ),
                  ),
                  forBankAccountholder
                      ? BankMainLayout(
                          cardData: BankCard(mybool: forBankAccountholder))
                      : const Text('')
                ],
              ),
            ),
          ),
          AddStep(title: 'ddd', content: const FamilyScreen()),
          AddStep(
            title: 'ddd',
            content: Container(
              width: 100,
              height: 20,
              color: const Color.fromARGB(255, 10, 137, 183),
            ),
          ),
          AddStep(
            title: 'ddd',
            content: Column(
              children: [
                Container(
                  width: 100,
                  height: 20,
                  color: const Color.fromARGB(255, 50, 39, 4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

///changed to dup