// import 'package:flutter/material.dart';
// import 'package:pankajtrust_app/core/constant/constants.dart';

// class CheckBoxWorkout extends StatefulWidget {
//   final double width;

//   const CheckBoxWorkout({
//     super.key,
//     required this.width,
//   });

//   @override
//   State<CheckBoxWorkout> createState() => _CheckBoxWorkoutState();
// }

// class _CheckBoxWorkoutState extends State<CheckBoxWorkout> {
//   bool alive = true;

//   bool bedridden = false;

//   int selectedValue = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 4),
//               child: Text(
//                 'Alive',
//                 style: kCardContentStyle,
//               ),
//             ),
//             const SizedBox(
//               width: 150,
//             ),
//             Checkbox(
//                 value: alive,
//                 onChanged: (value) {
//                   setState(() {
//                     alive = true;
//                   });
//                 }),
//             Text(
//               'Yes',
//               style: kCardContentSmallStyle,
//             ),
//             Checkbox(
//                 value: !alive,
//                 onChanged: (value) {
//                   setState(() {
//                     alive = false;
//                     bedridden = false;
//                   });
//                 }),
//             Text(
//               'No',
//               style: kCardContentSmallStyle,
//             ),
//           ],
//         ),
//         Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 4),
//               child: Text(
//                 'Bedridden',
//                 style: kCardContentStyle,
//               ),
//             ),
//             const SizedBox(
//               width: 111,
//             ),
//             Checkbox(
//                 value: bedridden,
//                 onChanged: (value) {
//                   setState(() {
//                     if (alive) {
//                       bedridden = true;
//                     }
//                   });
//                 }),
//             Text(
//               'Yes',
//               style: kCardContentSmallStyle,
//             ),
//             Checkbox(
//                 value: !bedridden,
//                 onChanged: (value) {
//                   setState(() {
//                     bedridden = false;
//                   });
//                 }),
//             Text(
//               'No',
//               style: kCardContentSmallStyle,
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';

class CheckBoxWorkout extends StatefulWidget {
  final double width;

  const CheckBoxWorkout({
    super.key,
    required this.width,
  });

  @override
  State<CheckBoxWorkout> createState() => _CheckBoxWorkoutState();
}

class _CheckBoxWorkoutState extends State<CheckBoxWorkout> {

  //Algorithm
  //Row 1
  //Checkbox1 (value = alive)    alive = true
  //Checkbox2 (value = !alive)   alive = false

  //Row 2
  //Checkbox1 (value = bedridden)   if  alive = true , bedridden = true
  //Checkbox2 (value = !bedridden)   bedridden = false
  bool alive = true;
  bool bedridden = true;
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                'Alive',
                style: kCardContentStyle,
              ),
            ),
            const SizedBox(
              width: 150,
            ),
            Checkbox(
                value: alive,
                onChanged: (value) {
                  setState(() {
                    alive = true;
                  });
                }),
            Text(
              'Yes',
              style: kCardContentSmallStyle,
            ),
            Checkbox(
                value: !alive,
                onChanged: (value) {
                  setState(() {
                    alive = false;
                    bedridden = false;
                  });
                }),
            Text(
              'No',
              style: kCardContentSmallStyle,
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                'Bedridden',
                style: kCardContentStyle,
              ),
            ),
            const SizedBox(
              width: 111,
            ),
            Checkbox(
                value: bedridden,
                onChanged: (value) {
                  setState(() {
                    if (alive) {
                      bedridden = true;
                    }
                  });
                }),
            Text(
              'Yes',
              style: kCardContentSmallStyle,
            ),
            Checkbox(
                value: !bedridden,
                onChanged: (value) {
                  setState(() {
                    bedridden = false;
                  });
                }),
            Text(
              'No',
              style: kCardContentSmallStyle,
            ),
          ],
        ),
      ],
    );
  }
}