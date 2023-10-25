// import 'package:flutter/material.dart';
// import 'package:pankajtrust_app/package/core/constants.dart';

// class ToggleButton extends StatelessWidget {
//   final String currentStep;
//   final VoidCallback onToggle;
//   final bool isActive;

//   const ToggleButton({
//     super.key,
//     required this.currentStep,
//     required this.onToggle,
//     required this.isActive,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 35,
//       height: 35,
//       decoration: BoxDecoration(
//         color: isActive
//             ? Color.fromARGB(255, 255, 8, 8)
//             : const Color.fromARGB(255, 201, 200, 200),
//         borderRadius: const BorderRadius.all(
//           Radius.circular(40),
//         ),
//         border: Border.all(
//           color: isActive ? Colors.black38 : Colors.black,
//           width: 1.0,
//         ),
//       ),
//       child: Center(
//           child: Text(
//         currentStep,
//         style: isActive ? blackColor : whiteColor,
//       )),
//     );
//   }
// }
