import 'package:flutter/material.dart';

class OccupationMenu extends StatefulWidget {
  const OccupationMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<OccupationMenu> createState() => _OccupationMenuState();
}

class _OccupationMenuState extends State<OccupationMenu> {
  int? selectedId;
  final List<String> items = ['farmer', 'painter', 'watchman'];
  final Map<int, String> itemMap = {1: 'farmer', 2: 'painter', 3: 'watchman'};

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton(
          isExpanded: true,
          iconSize: 32,
          underline: Container(),
          value: selectedId,
          items: itemMap.keys.map((int id) {
            return DropdownMenuItem(
              value: id,
              child: SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(itemMap[id]!,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal)),
                ),
              ),
            );
          }).toList(),
          onChanged: (newId) {
            setState(() {
              selectedId = newId;
            });
            print("Selected item ID: $newId, Name: ${itemMap[newId]}");
          },
        ),
      ],
    );
  }
}