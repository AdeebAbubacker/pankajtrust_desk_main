// import 'package:flutter/material.dart';

// class MyValidation extends StatelessWidget {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   MyValidation({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Form(
//             key: _formKey,
//             autovalidateMode: AutovalidateMode
//                 .onUserInteraction, // Automatically validate when user interacts with the field
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10, right: 10),
//                   child: TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return "Enter password";
//                       }
//                       return null;
//                     },
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }