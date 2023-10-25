import 'package:flutter/material.dart';

class InpuText extends StatefulWidget {
  final int maxlines;
  const InpuText({
    this.maxlines = 1,
    Key? key,
  }) : super(key: key);

  @override
  State<InpuText> createState() => _InpuTextState();
}

class _InpuTextState extends State<InpuText> {
  int? selectedId;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          child: TextField(
            maxLines: widget.maxlines,
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
