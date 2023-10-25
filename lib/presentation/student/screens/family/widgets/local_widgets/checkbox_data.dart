import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';

class CheckBoxData extends StatefulWidget {
  final double width;
  final String label;
  const CheckBoxData({super.key, required this.label, this.width = 20});

  @override
  _CheckBoxDataState createState() => _CheckBoxDataState();
}

class _CheckBoxDataState extends State<CheckBoxData> {
  bool aliveOrDisabled = false;
  bool deadOrEnabled = false;
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            widget.label,
            style: kCardContentStyle,
          ),
        ),
        SizedBox(
          width: widget.width,
        ),
        Checkbox(
            value: aliveOrDisabled,
            onChanged: (value) {
              setState(() {
                aliveOrDisabled = true;
                deadOrEnabled ? deadOrEnabled = false : '';
              });
            }),
        Text(
          'yes',
          style: kCardContentSmallStyle,
        ),
        Checkbox(
            value: deadOrEnabled,
            onChanged: (value) {
              setState(() {
                deadOrEnabled = true;
                deadOrEnabled ? aliveOrDisabled = false : '';
              });
            }),
        Text(
          'no',
          style: kCardContentSmallStyle,
        ),
      ],
    );
  }
}





//------- Dead or alive workout ------------ success

// class CheckBoxWorkout extends StatefulWidget {
//   final double width;
//   final String label;
//   const CheckBoxWorkout({super.key, required this.width, required this.label});

//   @override
//   State<CheckBoxWorkout> createState() => _CheckBoxWorkoutState();
// }

// class _CheckBoxWorkoutState extends State<CheckBoxWorkout> {
//   bool aliveOrDisabled1 = false;
//   bool deadOrEnabled1 = false;
//   bool Bedridden = false;
//   bool notBedridden = false;
//   int selectedValue = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Column(
//         children: [
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 4),
//                 child: Text(
//                   'Alive / dead',
//                   style: kCardContentStyle,
//                 ),
//               ),
//               SizedBox(
//                 width: widget.width,
//               ),
//               Checkbox(
//                   value: aliveOrDisabled1,
//                   onChanged: (value) {
//                     setState(() {
//                       aliveOrDisabled1 = true;
//                       notBedridden = false;
//                       deadOrEnabled1 ? deadOrEnabled1 = false : '';
//                     });
//                   }),
//               Text(
//                 'yes',
//                 style: kCardContentSmallStyle,
//               ),
//               Checkbox(
//                   value: deadOrEnabled1,
//                   onChanged: (value) {
//                     setState(() {
//                       deadOrEnabled1 = true;
//                       notBedridden = true;
//                       Bedridden = false;
//                       deadOrEnabled1 ? aliveOrDisabled1 = false : '';
//                     });
//                   }),
//               Text(
//                 'no',
//                 style: kCardContentSmallStyle,
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 4),
//                 child: Text(
//                   'Bedridden',
//                   style: kCardContentStyle,
//                 ),
//               ),
//               SizedBox(
//                 width: widget.width,
//               ),
//               Checkbox(
//                   value: Bedridden,
//                   onChanged: (value) {
//                     setState(() {
//                       Bedridden = true;
//                       notBedridden ? notBedridden = false : '';
//                     });
//                   }),
//               Text(
//                 'yes',
//                 style: kCardContentSmallStyle,
//               ),
//               Checkbox(
//                   value: notBedridden,
//                   onChanged: (value) {
//                     setState(() {
//                       notBedridden = true;
//                       notBedridden ? Bedridden = false : '';
//                     });
//                   }),
//               Text(
//                 'no',
//                 style: kCardContentSmallStyle,
//               ),
//             ],
//           ),
//         ],
//       )),
//     );
//   }
// }
