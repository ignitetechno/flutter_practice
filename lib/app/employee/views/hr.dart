// import 'package:flutter/material.dart';

// class HRCard extends StatelessWidget {
//   final String title;
//   final String value;
//   final IconData icon;

//   const HRCard({
//     super.key,
//     required this.title,
//     required this.value,
//     required this.icon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),

//       child: Padding(
//         padding: const EdgeInsets.all(12),

//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [

//             Icon(icon, size: 35, color: Colors.blue),

//             const SizedBox(height: 10),

//             Text(
//               value,
//               style: const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             Text(
//               title,
//               style: const TextStyle(
//                 color: Colors.grey,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }