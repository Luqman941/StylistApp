// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Day extends StatelessWidget {
//   final DateTime date;
//
//   Day(this.date);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Container(
//       decoration: BoxDecoration(
//       border: Border.all(color: Color(0xFF000000)),
//       borderRadius: BorderRadius.circular(20),
//       ),
//      child: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Container(
//           height: 35,
//         width: 35,
//         decoration: BoxDecoration(
//           border: Border.all(color: Color(0xFF000000)),
//           borderRadius: BorderRadius.circular(20),
//         ),
//        alignment: Alignment.center,
//        child: Text(
//           day.format('dd'),
//           style: TextStyle(fontWeight: FontWeight.w700, color: Color(0xFf000000), fontSize: 20),
//         ),
//         ),
//         Text(
//           day.format('EEE'),
//           style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF000000), fontSize: 20),
//         ),
//       ],
//      ),
//     );
//   }
// }