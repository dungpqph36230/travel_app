// import 'package:flutter/material.dart';
// import 'package:travel_app/screens/mess.dart';
// import 'package:travel_app/screens/notification.dart';
// import 'package:travel_app/sign_in_up_widget/button_back.dart';

// class EditMess extends StatelessWidget {
//   const EditMess({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             ButtonBack(onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const MessTravel()));
//             }),
//             const Text(
//               "Notification",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             TextButton(
//               onPressed: () {},
//               child: const Text(
//                 "Clear all",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   color: Color(0xFF0D6EFD),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         const Notifications(),
//       ],
//     );
//   }
// }
