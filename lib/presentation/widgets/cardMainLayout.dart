import 'package:flutter/material.dart';
import 'package:pankajtrust_app/core/colors/colors.dart';
import 'package:pankajtrust_app/core/constant/constants.dart';

class CardMainLayout extends StatefulWidget {
  final double CardMainLayoutheight;
  final String title;
  final Widget? bankData;
  final Widget cardData;
  CardMainLayout({
    this.bankData,
    super.key,
    required this.cardData,
    required this.title,
    required this.CardMainLayoutheight,
  });
  // ignore: prefer_typing_uninitialized_variables

  @override
  State<CardMainLayout> createState() => _CardMainLayoutState();
}

class _CardMainLayoutState extends State<CardMainLayout> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // const SizedBox(
          //   height: 10,
          // ),
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
                  ]),
              width: 370,
              height: widget.CardMainLayoutheight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      widget.title,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: widget.bankData,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



//  child: Text(
//                       widget.title,
//                       style: kCardFilterTextStyle,
//                     ),

///changed font style