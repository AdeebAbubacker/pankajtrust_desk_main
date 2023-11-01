import 'package:flutter/material.dart';

class ToggleBtn extends StatelessWidget {
  final bool isActive;
  final VoidCallback onToggle;
  // ignore: prefer_typing_uninitialized_variables
  final currentStep;
  const ToggleBtn(
      {super.key,
      required this.isActive,
      required this.onToggle,
      this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          color: isActive
              ? const Color(0xFF702DE3)
              : Color.fromARGB(255, 184, 180, 180),
          borderRadius: const BorderRadius.all(Radius.circular(90))),
      child: Center(child: currentStep),
    );
  }
}


// Container(
//       width: 35,
//       height: 35,
//       decoration: BoxDecoration(
//           color: isActive
//               ? const Color(0xFF702DE3)
//               : Color.fromARGB(255, 184, 180, 180),
//           borderRadius: const BorderRadius.all(Radius.circular(90))),
//       child: Center(child: currentStep),
//     );