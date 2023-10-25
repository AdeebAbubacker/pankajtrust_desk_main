import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';

class EnterSex extends StatefulWidget {
  const EnterSex({super.key});

  @override
  _EnterSexState createState() => _EnterSexState();
}

class _EnterSexState extends State<EnterSex> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            'Enter Sex',
            style: kCardContentStyle,
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Radio(
              value: 1,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as int;
                });
              },
            ),
            Text(
              'Male',
              style: kCardContentStyle,
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 2,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as int;
                });
              },
            ),
            Text(
              'Female',
              style: kCardContentStyle,
            ),
          ],
        ),
      ],
    );
  }
}
