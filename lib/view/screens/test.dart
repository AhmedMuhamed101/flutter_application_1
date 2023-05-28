// import 'package:flutter/material.dart';
// import 'package:team/view/screens/train_Data_Screens.dart';

// class FirstScreen extends StatefulWidget {
//   @override
//   _FirstScreenState createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//    String? selectedStartingPoint;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Starting Point'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DropdownButton<String>(
//               value: selectedStartingPoint,
//               onChanged: (newValue) {
//                 setState(() {
//                   selectedStartingPoint = newValue!;
//                 });
//               },
//               items: [
//                 DropdownMenuItem(
//                   value: 'Starting Point 1',
//                   child: Text('Starting Point 1'),
//                 ),
//                 DropdownMenuItem(
//                   value: 'Starting Point 2',
//                   child: Text('Starting Point 2'),
//                 ),
//                 // Add more dropdown items as needed
//               ],
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => SecondScreen(startingPoint: selectedStartingPoint!),
//                   ),
//                 );
//               },
//               child: Text('Next'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
