// import 'dart:io';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class MyHmPge extends StatefulWidget {
//   @override
//   _MyHmPgeState createState() {
//     return _MyHmPgeState();
//   }
// }
//
// class _MyHmPgeState extends State<MyHmPge> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter AlertDialog"),
//       ),
//       body: Center(
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () {
//                   _showDialog(context);
//                 },
//                 child: Text("Show Dialog"),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   _dispalyDialog(context);
//                 },
//                 child: Text("Display Dialog"),
//               ),
//             ]),
//       ),
//     );
//   }
//
//   _showDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Expanded(
//           child: AlertDialog(
//             alignment: AlignmentDirectional.center,
//             contentPadding: EdgeInsets.only(top: 15, left: 60, right: 60),
//             titlePadding: EdgeInsets.only(top: 15, left: 100, right: 100),
//             title: Text('Welcome'),
//             content: Text('Do you wanna learn flutter?'),
//             actions: [
//               Container(
//                 alignment: AlignmentDirectional.bottomCenter,
//                 child: Center(
//                   child: Column(
//                     children: [
//                       TextButton(
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                         child: const Text(
//                           'YES',
//                           style: TextStyle(color: Colors.black),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   _dispalyDialog(BuildContext context) {
//     showDialog<void>(
//       context: context,
//       builder: (BuildContext dialogContext) {
//         return AlertDialog(
//           title: Text('Thanks'),
//           content: Text('Successfuly Booked'),
//           actions: <Widget>[
//             TextButton(
//               child: Text('Okay'),
//               onPressed: () {
//                 Navigator.of(dialogContext).pop(); // Dismiss alert dialog
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
