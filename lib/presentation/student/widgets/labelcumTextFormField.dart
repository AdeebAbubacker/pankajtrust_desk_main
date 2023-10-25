import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/student/widgets/input_label.dart';

// ignore: must_be_immutable
class LabelcumTextFormField extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final int maxlines;
  String mytext;
  final double padding;
  LabelcumTextFormField(
      {this.maxlines = 1, super.key, required this.mytext, this.padding = 5});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InputLabel(mytext: mytext),
            RichText(
              text: const TextSpan(
                  text: ' *',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
        SizedBox(
          width: 380,
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode
                .onUserInteraction, // Automatically validate when user interacts with the field
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "name is mandatory";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
