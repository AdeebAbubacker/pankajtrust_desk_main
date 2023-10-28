import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/widgets/checkboxdata.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';
import 'package:pankajtrust_app/presentation/widgets/label_bottomSheet.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/widgets/local_widgets/checkbox_data.dart';
import 'package:pankajtrust_app/presentation/widgets/labul_NumericalText.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/widgets/local_widgets/lineDivider.dart';
import 'package:pankajtrust_app/presentation/widgets/input_label.dart';
import 'package:pankajtrust_app/presentation/widgets/label_inputText.dart';
import 'package:pankajtrust_app/presentation/widgets/labelcumTextFormField.dart';
import 'package:pankajtrust_app/presentation/widgets/spacer_height.dart';

class SiblingsCard extends StatefulWidget {
  final Widget siblings;
  bool mybool;

  final width;
  SiblingsCard({
    super.key,
    this.width,
    required this.mybool,
    this.siblings = const Text(''),
  });

  @override
  State<SiblingsCard> createState() => _SiblingsCardState();
}

class _SiblingsCardState extends State<SiblingsCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 12),
            child: Text('Siblings Details', style: kfamiltTitleTextColor),
          ),
          LabelcumTextFormField(mytext: 'Name'),
        ],
      ),
    );
  }
}
