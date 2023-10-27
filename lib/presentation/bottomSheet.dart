// // -------------------------- Edited One -------------------------------------

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class OccupationWithSheet extends StatefulWidget {
//   const OccupationWithSheet({Key? key}) : super(key: key);

//   @override
//   State<OccupationWithSheet> createState() => _OccupationWithSheetState();
// }

// class _OccupationWithSheetState extends State<OccupationWithSheet> {
//   List<String> _tempListOfCities = [
//     'Agriculture',
//     'Fishing',
//     'Plumbing',
//     'Painting',
//     'Soldier',
//     'Policeman',
//     'Driver',
//     'Clerk',
//     "Office Staff",
//     'Supervisor',
//     'Able Seamen',
//     'Accountants',
//     'Auditors',
//     'Actors',
//     'Actuaries',
//     'Acupuncturists',
//     'Acute Care Nurses',
//     'Education Specialists',
//     'Adjustment Clerks',
//     'Administrative Law Judges',
//     'Adjudicators',
//     'Hearing Officers',
//     'Administrative Services Managers',
//     'Adult Literacy',
//     'Remedial Education',
//     'GED Teachers and Instructors',
//     'Advanced Practice Psychiatric Nurses',
//     'Advertising and Promotions Managers',
//     'Advertising Sales Agents',
//     'Aerospace Engineering and Operations Technicians',
//     'Aerospace Engineers',
//   ];
//   final List<String> _listOfCities = [];
//   final _scaffoldKey = GlobalKey<ScaffoldState>();
//   final TextEditingController textController = TextEditingController();

//   void _showModal(context) {
//     showModalBottomSheet(
//       isScrollControlled: true,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
//       ),
//       context: context,
//       builder: (context) {
//         return StatefulBuilder(
//           builder: (BuildContext context, StateSetter setState) {
//             return DraggableScrollableSheet(
//               initialChildSize: 0.5,
//               minChildSize: 0.2,
//               maxChildSize: 0.9,
//               expand: false,
//               builder:
//                   (BuildContext context, ScrollController scrollController) {
//                 return Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Padding(
//                             padding: EdgeInsets.only(top: 20, bottom: 20),
//                             child: Text(
//                               'Occupation Details',
//                               style: TextStyle(
//                                 fontSize: 15,
//                                 color: Color.fromARGB(255, 92, 91, 90),
//                               ),
//                             ),
//                           ),
//                           CloseIconButton(
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: 500,
//                       height: 1,
//                       color: const Color.fromARGB(255, 211, 211, 208),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             child: TextField(
//                               controller: textController,
//                               decoration: InputDecoration(
//                                 hintText: 'Search Occupation / Job',
//                                 contentPadding: const EdgeInsets.all(8),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(15.0),
//                                   borderSide: const BorderSide(),
//                                 ),
//                                 prefixIcon: const Icon(Icons.search),
//                                 suffixIcon: Padding(
//                                   padding: const EdgeInsets.only(right: 20),
//                                   child: IconButton(
//                                     icon: const Icon(FontAwesomeIcons.eraser,
//                                         size: 24,
//                                         color:
//                                             Color.fromARGB(255, 140, 138, 138)),
//                                     color: const Color(0xFF1F91E7),
//                                     onPressed: () {
//                                       setState(
//                                         () {
//                                           textController.clear();
//                                           // _tempListOfCities.clear();
//                                         },
//                                       );
//                                     },
//                                   ),
//                                 ),
//                               ),
//                               onChanged: (value) {
//                                 setState(
//                                   () {
//                                     // _tempListOfCities = _buildSearchList(value);
//                                   },
//                                 );
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: ListView.separated(
//                         controller: scrollController,
//                         itemCount: (_tempListOfCities != null &&
//                                 _tempListOfCities.isNotEmpty)
//                             ? _tempListOfCities.length
//                             : _listOfCities.length,
//                         separatorBuilder: (context, index) {
//                           return const Divider();
//                         },
//                         itemBuilder: (context, index) {
//                           return InkWell(
//                             child: (_tempListOfCities != null &&
//                                     _tempListOfCities.isNotEmpty)
//                                 ? _showBottomSheetWithSearch(
//                                     index, _tempListOfCities)
//                                 : _showBottomSheetWithSearch(
//                                     index, _listOfCities),
//                             onTap: () {
//                               // Set the selected text in the text field
//                               textController.text = _tempListOfCities[index];
//                               // Close the bottom sheet
//                               Navigator.of(context).pop();
//                             },
//                           );
//                         },
//                       ),
//                     )
//                   ],
//                 );
//               },
//             );
//           },
//         );
//       },
//     );
//   }

//   Widget _showBottomSheetWithSearch(int index, List listOfCities) {
//     final isLastItem = index == listOfCities.length - 1;

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding:
//               EdgeInsets.only(top: 14, left: 14, bottom: isLastItem ? 14 : 0),
//           child: Text(
//             listOfCities[index],
//             style: const TextStyle(
//               color: Color.fromARGB(255, 84, 84, 84),
//               fontSize: 14,
//             ),
//             textAlign: TextAlign.left,
//           ),
//         ),
//         if (isLastItem)
//           const Padding(
//             padding: EdgeInsets.only(bottom: 29),
//             child: Divider(
//               color: Color.fromARGB(255, 211, 211, 208),
//               height: 1,
//               thickness: 1,
//             ),
//           ),
//       ],
//     );
//   }

//   List<String> _buildSearchList(String userSearchTerm) {
//     List<String> searchList = [];

//     for (int i = 0; i < _listOfCities.length; i++) {
//       String name = _listOfCities[i];
//       if (name.toLowerCase().contains(userSearchTerm.toLowerCase())) {
//         searchList.add(_listOfCities[i]);
//       }
//     }
//     return searchList;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Stack(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     _showModal(context);
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: TextFormField(
//                       readOnly: true,
//                       controller: textController,
//                       decoration: const InputDecoration(
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(7)),
//                         ),
//                         suffixIcon:
//                             Icon(Icons.arrow_drop_down, color: Colors.black),
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     _showModal(context);
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       width: 370,
//                       height: 60,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CloseIconButton extends StatelessWidget {
//   final VoidCallback onPressed;

//   const CloseIconButton({Key? key, required this.onPressed}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Ink(
//       decoration: const ShapeDecoration(
//         color: Color.fromARGB(255, 204, 35, 35),
//         shape: CircleBorder(),
//       ),
//       child: InkResponse(
//         onTap: onPressed,
//         child: const Padding(
//           padding: EdgeInsets.all(10.0),
//           child: Icon(
//             FontAwesomeIcons.xmark,
//             size: 14,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class OccupationWithSheet extends StatefulWidget {
  const OccupationWithSheet({Key? key}) : super(key: key);

  @override
  State<OccupationWithSheet> createState() => _OccupationWithSheetState();
}

class _OccupationWithSheetState extends State<OccupationWithSheet> {
  List<String> _tempListOfCities = [
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
  List<String> _listOfCities = [];
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
                          const Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            child: Text(
                              'Occupation Details',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 92, 91, 90),
                              ),
                            ),
                          ),
                          CloseIconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
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
                                          // _tempListOfCities.clear();
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                              onChanged: (value) {
                                setState(
                                  () {
                                    // _tempListOfCities = _buildSearchList(value);
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
                        itemCount: (_tempListOfCities != null &&
                                _tempListOfCities.isNotEmpty)
                            ? _tempListOfCities.length
                            : _listOfCities.length,
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: (_tempListOfCities != null &&
                                    _tempListOfCities.isNotEmpty)
                                ? _showBottomSheetWithSearch(
                                    index, _tempListOfCities)
                                : _showBottomSheetWithSearch(
                                    index, _listOfCities),
                            onTap: () {
                              // Set the selected text in the text field
                              textController.text = _tempListOfCities[index];
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
        Padding(
          padding:
              EdgeInsets.only(top: 14, left: 14, bottom: isLastItem ? 14 : 0),
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
                  child: TextFormField(
                    readOnly: true,
                    maxLines: 1,
                    controller: textController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      suffixIcon:
                          Icon(Icons.arrow_drop_down, color: Colors.black),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _showModal(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 370,
                    height: 60,
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

class CloseIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CloseIconButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: const ShapeDecoration(
        color: Color.fromARGB(255, 204, 35, 35),
        shape: CircleBorder(),
      ),
      child: InkResponse(
        onTap: onPressed,
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(
            FontAwesomeIcons.xmark,
            size: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
