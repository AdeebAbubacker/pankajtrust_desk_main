import 'package:flutter/material.dart';
import 'package:pankajtrust_app/presentation/widgets/checkboxdata.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';
import 'package:pankajtrust_app/presentation/widgets/bottomSheet.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/widgets/local_widgets/checkbox_data.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/widgets/local_widgets/labulcumNumericalText.dart';
import 'package:pankajtrust_app/presentation/student/screens/family/widgets/local_widgets/lineDivider.dart';
import 'package:pankajtrust_app/presentation/widgets/input_label.dart';
import 'package:pankajtrust_app/presentation/widgets/label_cum_dropdownmenu.dart';
import 'package:pankajtrust_app/presentation/widgets/labelcumTextFormField.dart';
import 'package:pankajtrust_app/presentation/widgets/spacer_height.dart';

class SiblingsCard extends StatefulWidget {
  final Widget siblings;
  bool mybool;

  final width;
  SiblingsCard({
    super.key,
    this.width,
    required this.mybool, this.siblings = const Text(''),
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
            child: Text('Father', style: kfamiltTitleTextColor),
          ),

          LabelcumTextFormField(mytext: 'Name'),
          const HeightSpacer(height: 14),
          const CheckBoxWorkout(
            width: 46,
          ),

          const HeightSpacer(height: 14),
          InputLabel(mytext: 'Occupation / Job'),
          const OccupationWithSheet(),
          const HeightSpacer(height: 14),
          LabelcumNumericalText(mytext: 'Monthly Income'),
          const LineDivider(),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 12),
            child: Text('Mother', style: kfamiltTitleTextColor),
          ),
          LabelcumDropDownMenu(mytext: 'Name'),
          const HeightSpacer(height: 14),
          const CheckBoxData(label: 'Alive', width: 130),
          const HeightSpacer(height: 14),
          const CheckBoxData(label: 'Disabled / Bedriden', width: 26),
          const HeightSpacer(height: 14),
          InputLabel(mytext: 'Occupation / Job'),
          const OccupationWithSheet(),
          const HeightSpacer(height: 14),
          LabelcumNumericalText(mytext: 'Monthly Income'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                      width: 90,
                      height: 36,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(2)),
                          color: Color.fromARGB(221, 227, 223, 223)),
                      child: const Center(child: Text('or'))),
                ),
              ],
            ),
          ),
          const LineDivider(),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 12),
            child: Text('Guardian', style: kfamiltTitleTextColor),
          ),
          LabelcumDropDownMenu(mytext: 'Name'),
          const HeightSpacer(height: 14),
          const CheckBoxData(label: 'Alive', width: 130),
          const HeightSpacer(height: 14),
          const CheckBoxData(label: 'Disabled / Bedriden', width: 26),
          const HeightSpacer(height: 14),
          InputLabel(mytext: 'Occupation / Job'),
          const OccupationWithSheet(),
          const HeightSpacer(height: 14),
          // LabelcumDropDownMenu(mytext: 'Monthly Income'),
          LabelcumNumericalText(mytext: 'Monthly Income'),
          widget.siblings
        ],
      ),
    );
  }
}