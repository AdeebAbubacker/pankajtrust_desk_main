import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pankajtrust_app/core/colors/colors.dart';

GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class labelBottomSheet extends StatefulWidget {
  final String title;
  final hintText;
  List<String> ListofData = [
    'Agriculture',
    'Fishing',
    'Plumbing',
    'Painting',
    'Soldier',
    'Policeman',
    'Driver',
    'Clerk',
    "Office Staff",
    'Supervisor',
    'Able Seamen',
    'Accountants',
    'Auditors',
    'Actors',
    'Actuaries',
    'Acupuncturists',
    'Acute Care Nurses',
    'Education Specialists',
    'Adjustment Clerks',
    'Administrative Law Judges',
    'Adjudicators',
    'Hearing Officers',
    'Administrative Services Managers',
    'Adult Literacy',
    'Remedial Education',
    'GED Teachers and Instructors',
    'Advanced Practice Psychiatric Nurses',
    'Advertising and Promotions Managers',
    'Advertising Sales Agents',
    'Aerospace Engineering and Operations Technicians',
    'Aerospace Engineers',
  ];
  // ignore: non_constant_identifier_names
  labelBottomSheet(
      {Key? key,
      this.ListofData = const [
        'Agriculture',
        'Fishing',
        'Plumbing',
        'Painting',
        'Soldier',
        'Policeman',
        'Driver',
        'Clerk',
        "Office Staff",
        'Supervisor',
        'Able Seamen',
        'Accountants',
        'Auditors',
        'Actors',
        'Actuaries',
        'Acupuncturists',
        'Acute Care Nurses',
        'Education Specialists',
        'Adjustment Clerks',
        'Administrative Law Judges',
        'Adjudicators',
        'Hearing Officers',
        'Administrative Services Managers',
        'Adult Literacy',
        'Remedial Education',
        'GED Teachers and Instructors',
        'Advanced Practice Psychiatric Nurses',
        'Advertising and Promotions Managers',
        'Advertising Sales Agents',
        'Aerospace Engineering and Operations Technicians',
        'Aerospace Engineers',
      ], required this.title, this.hintText})
      : super(key: key);

  @override
  State<labelBottomSheet> createState() => _labelBottomSheetState();
}

class _labelBottomSheetState extends State<labelBottomSheet> {
  final List<String> _listOfCities = [];
  final TextEditingController textController = TextEditingController();

  void _showModal(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.2,
              maxChildSize: 0.9,
              expand: false,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 1),
                            child: Text(
                              widget.title,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 92, 91, 90),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.close,
                              color: kredColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 500,
                      height: 1,
                      color: const Color.fromARGB(255, 211, 211, 208),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: const TextStyle(
                                  color: kblackColor, fontSize: 14),
                              controller: textController,
                              decoration: InputDecoration(
                                // hintText: 'Search Occupation / Job',
                                 hintText: widget.hintText,
                                contentPadding: const EdgeInsets.all(8),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(),
                                ),
                                prefixIcon: const Icon(Icons.search),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: IconButton(
                                    icon: const Icon(FontAwesomeIcons.eraser,
                                        size: 24,
                                        color:
                                            Color.fromARGB(255, 140, 138, 138)),
                                    color: const Color(0xFF1F91E7),
                                    onPressed: () {
                                      setState(
                                        () {
                                          textController.clear();
                                          // ListofData.clear();
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                              onChanged: (value) {
                                setState(
                                  () {
                                    // ListofData = _buildSearchList(value);
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        controller: scrollController,
                        itemCount: (widget.ListofData != null &&
                                widget.ListofData.isNotEmpty)
                            ? widget.ListofData.length
                            : _listOfCities.length,
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: (widget.ListofData != null &&
                                    widget.ListofData.isNotEmpty)
                                ? _showBottomSheetWithSearch(
                                    index, widget.ListofData)
                                : _showBottomSheetWithSearch(
                                    index, _listOfCities),
                            onTap: () {
                              // Set the selected text in the text field
                              textController.text = widget.ListofData[index];
                              // Close the bottom sheet
                              Navigator.of(context).pop();
                            },
                          );
                        },
                      ),
                    )
                  ],
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _showBottomSheetWithSearch(int index, List listOfCities) {
    final isLastItem = index == listOfCities.length - 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 12, bottom: 10, left: 14),
          child: Text(
            listOfCities[index],
            style: const TextStyle(
              color: Color.fromARGB(255, 84, 84, 84),
              fontSize: 14,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        if (isLastItem)
          const Padding(
            padding: EdgeInsets.only(bottom: 29),
            child: Divider(
              color: Color.fromARGB(255, 211, 211, 208),
              height: 1,
              thickness: 1,
            ),
          ),
      ],
    );
  }

  List<String> _buildSearchList(String userSearchTerm) {
    List<String> searchList = [];

    for (int i = 0; i < _listOfCities.length; i++) {
      String name = _listOfCities[i];
      if (name.toLowerCase().contains(userSearchTerm.toLowerCase())) {
        searchList.add(_listOfCities[i]);
      }
    }
    return searchList;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  _showModal(context);
                },
                child: Container(
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(255, 136, 133, 133),
                        width: 1.0,
                      ),
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Color.fromARGB(
                            255, 92, 92, 92), // Change text color to blue
                        fontSize: 14, // Change font size
                        // You can add more style properties as needed
                      ),
                      readOnly: true,
                      maxLines: 1,
                      controller: textController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        suffixIcon:
                            Icon(Icons.arrow_drop_down, color: Colors.black),
                        // Apply custom style to the text
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _showModal(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 370,
                    height: 48,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
