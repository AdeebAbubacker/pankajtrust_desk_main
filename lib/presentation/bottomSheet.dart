import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _tempListOfCities = [
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
    ' Actuaries',
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
    ' Advanced Practice Psychiatric Nurses',
    ' Advertising and Promotions Managers',
    'Advertising Sales Agents',
    'Aerospace Engineering and Operations Technicians',
    ' Aerospace Engineers',
  ];
  final List _listOfCities = [];
  //1
  final _scaffoldKey = GlobalKey();
  final TextEditingController textController = TextEditingController();

  void _showModal(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
      ),
      context: context,
      builder: (context) {
        //3
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
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            child: Text(
                              'Occupation Details',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 92, 91, 90)),
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
                              controller: textController,
                              decoration: InputDecoration(
                                hintText: 'Search Occupation / Job',
                                contentPadding: const EdgeInsets.all(8),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(),
                                ),
                                prefixIcon: const Icon(Icons.search),
                              ),
                              onChanged: (value) {
                                //4
                                setState(
                                  () {
                                    _tempListOfCities = _buildSearchList(value);
                                  },
                                );
                              },
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.close),
                            color: const Color(0xFF1F91E7),
                            onPressed: () {
                              setState(
                                () {
                                  textController.clear();
                                  _tempListOfCities.clear();
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        controller: scrollController,
                        //5
                        itemCount: (_tempListOfCities != null &&
                                _tempListOfCities.isNotEmpty)
                            ? _tempListOfCities.length
                            : _listOfCities.length,
                        // ignore: avoid_types_as_parameter_names
                        separatorBuilder: (context, int) {
                          return const Divider();
                        },
                        itemBuilder: (context, index) {
                          return InkWell(
                            //6
                            child: (_tempListOfCities != null &&
                                    _tempListOfCities.isNotEmpty)
                                ? _showBottomSheetWithSearch(
                                    index, _tempListOfCities)
                                : _showBottomSheetWithSearch(
                                    index, _listOfCities),
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  content: Text(
                                    (_tempListOfCities != null &&
                                            _tempListOfCities.isNotEmpty)
                                        ? _tempListOfCities[index]
                                        : _listOfCities[index],
                                  ),
                                ),
                              );
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

  // List Shown on Screeen
  Widget _showBottomSheetWithSearch(int index, List listOfCities) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 30, bottom: 14),
      child: Text(listOfCities[index],
          style: const TextStyle(
              color: Color.fromARGB(255, 84, 84, 84), fontSize: 14),
          textAlign: TextAlign.left),
    );
  }

  //9
  List _buildSearchList(String userSearchTerm) {
    List searchList = [];

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
    return Scaffold(
      key: _scaffoldKey,
      // appBar: AppBar(
      //   title: Text('dddd'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Show bottom sheet"),
              onPressed: () {
                _showModal(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
