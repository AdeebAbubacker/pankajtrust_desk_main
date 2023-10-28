import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/colors/colors.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';
import 'package:pankajtrust_app/presentation/widgets/label_cum_dropdownmenu.dart';
import 'package:pankajtrust_app/presentation/widgets/spacer_height.dart';

class BankMainLayout extends StatefulWidget {
  final Widget cardData;
  const BankMainLayout({
    super.key,
    required this.cardData,
  });
  // ignore: prefer_typing_uninitialized_variables

  @override
  State<BankMainLayout> createState() => _BankMainLayoutState();
}

class _BankMainLayoutState extends State<BankMainLayout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.16), // RGBA color
                  offset: Offset(5, 8), // X and Y offset
                  blurRadius: 15, // Blur radius (B)
                  spreadRadius: 0, // Spread (S)
                ),
              ],
            ),
            width: 370,
            height: 489,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Bank Details',
                    style: kCardFilterTextStyle,
                  ),
                ),
                Container(
                  height: 2,
                  width: 370,
                  color: khorizontlinecolor,
                ),
                const SizedBox(
                  height: 14,
                ),

                // Content Comes Here

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: widget.cardData,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BankCard extends StatefulWidget {
  bool mybool;
  final width;
  BankCard({super.key, this.width, required this.mybool});

  @override
  State<BankCard> createState() => _BankCardState();
}

class _BankCardState extends State<BankCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelcumDropDownMenu(mytext: 'Enter full name'),
          const HeightSpacer(height: 14),
          LabelcumDropDownMenu(mytext: 'Enter Address', maxlines: 3),
          const HeightSpacer(height: 14),
          LabelcumDropDownMenu(mytext: 'Enter Bank Name'),
          const HeightSpacer(height: 14),
          LabelcumDropDownMenu(mytext: 'Enter Branch name with IFSC'),
          const HeightSpacer(height: 14),
        ],
      ),
    );
  }
}
