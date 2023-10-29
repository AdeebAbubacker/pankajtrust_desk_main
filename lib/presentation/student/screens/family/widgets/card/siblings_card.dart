import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';


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
          // LabelcumTextFormField(labelText: 'sss'),
        ],
      ),
    );
  }
}
