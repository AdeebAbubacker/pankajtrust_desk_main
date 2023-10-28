// when i put choice value 1, 2, 3 in list then automatically
// it should generate radio buttons

import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';

class horizontalRadioBtn extends StatefulWidget {
  String? title;
  int groupValue;
  final List<Content> steps;

  horizontalRadioBtn(
      {super.key,
      required this.title,
      this.groupValue = 0,
      required this.steps});

  @override
  _horizontalRadioBtnState createState() => _horizontalRadioBtnState();
}

class _horizontalRadioBtnState extends State<horizontalRadioBtn> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            widget.title.toString(),
            style: kCardContentStyle,
          ),
        ),
        // const SizedBox(
        //   width: 40,
        // ),
        Row(
          children: widget.steps.asMap().entries.map((entry) {
            final index = entry.key + 1;
            final content = entry.value;
            return Row(
              children: [
                Radio(
                  value: index, // Use the index as the value
                  groupValue: widget.groupValue,
                  onChanged: (value) {
                    setState(() {
                      widget.groupValue = value as int;
                    });
                  },
                ),
                Text(
                  content.choiceLabel,
                  style: kCardContentStyle,
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}

class Content {
  final String choiceLabel;

  Content({
    required this.choiceLabel,
  });
}
