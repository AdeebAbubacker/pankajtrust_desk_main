import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/colors/colors.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';
import 'package:pankajtrust_app/presentation/student/screens/homescreen/cardData1.dart';
import 'package:pankajtrust_app/presentation/widgets/cardMainLayout.dart';
import 'package:pankajtrust_app/presentation/widgets/input_label.dart';
import 'package:pankajtrust_app/presentation/widgets/label_bottomSheet.dart';
import 'package:pankajtrust_app/presentation/widgets/custom_bottomSheet.dart';
import 'package:pankajtrust_app/presentation/widgets/label_inputText.dart';
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
            height: 499,
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
          LabelInputText(label: 'Enter full name'),
          const HeightSpacer(height: 14),
          LabelInputText(label: 'Enter Address', maxlines: 3),
          const HeightSpacer(height: 14),
          InputLabel(mytext: 'Enter Bank'),
          labelBottomSheet(
            title: 'Bank Details',
            hintText: 'Search For Bank',
            listofData: const [
              ' ALLAHABAD BANK',
              'ANDHRA BANK',
              'AXIS BANK',
              'BANK OF BARODA',
              'BANK OF INDIA',
              'BANK OF MAHARASHTRA',
              'CANARA BANK',
              'CORPORATION BANK',
              'HONG KONG & SHANGHAI BANK (HSBC)',
              'INDIAN BANK',
              'INDIAN OVERSEAS BANK',
              'KARUR VYSYA BANK',
              'NORTH MALABAR GRAMIN BANK',
              'ORIENTAL BANK OF COMMERCE',
              'PUNJAB AND SIND BANK',
              'PUNJAB NATIONAL BANK',
              'RESERVE BANK OF INDIA',
              'SOUTH INDIAN BANK',
              'STANDARD CHARTERED BANK',
              'STATE BANK OF BIKANER AND JAIPUR',
              'STATE BANK OF HYDERABAD',
              'STATE BANK OF MYSORE',
              'STATE BANK OF PATIALA',
              'STATE BANK OF TRAVANCORE',
              'SYNDICATE BANK',
              'LAKSHMI VILAS BANK LTD ',
              'CENTRAL BANK OF INDIA',
              'DENA BANK',
              'BANDHAN BANK LIMITED',
              'KERALA GRAMIN BANK',
              'LAXMI VILAS BANK',
              'BANK OF BAHARAIN AND KUWAIT BSC',
              'BHARATIYA MAHILA BANK LIMITED',
              'CATHOLIC SYRIAN BANK',
              'CITIBANK NA (CITY)',
              'CITY UNION BANK LTD',
              'DEVELOPMENT CREDIT BANK',
              'DHANALAXMI BANK',
              'DOHA BANK1 branch',
              'FEDERAL BANK LTD ',
              'HDFC BANK LTD',
              'ICICI BANK LTD',
              'IDBI BANK LTD',
              'ING VYSYA BANK LTD',
              'INDUSIND BANK LTD',
              'JAMMU AND KASHMIR BANK LTD',
              'KARNATAKA BANK LTD',
              'KOTAK MAHINDRA BANK',
              'STATE BANK OF INDIA',
              'TAMILNAD MERCANTILE BANK LTD',
              'YES BANK LTD',
            ],
          ),
          const HeightSpacer(height: 14),
          LabelInputText(label: 'Enter Branch name with IFSC'),
          const HeightSpacer(height: 14),
        ],
      ),
    );
  }
}
