import 'package:flutter/material.dart';
import 'package:login_app_flutter/src/constants/colors.dart';

Widget categoryCard(String title, IconData icon) {
  return Container(
    width: 80,
    margin: EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: primaryColor,
          child: Icon(icon, color: Colors.white, size: 30),
        ),
        SizedBox(height: 5),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}
//
// import 'package:flutter/material.dart';
//
// class CategoryCard extends StatelessWidget {
//   final String title;
//   final IconData icon;
//   final VoidCallback onTap;
//
//   const CategoryCard({
//     Key? key,
//     required this.title,
//     required this.icon,
//     required this.onTap,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           CircleAvatar(
//             radius: 30,
//             backgroundColor: Colors.orange[400],
//             child: Icon(
//               icon,
//               color: Colors.white,
//               size: 30,
//             ),
//           ),
//           SizedBox(height: 5),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(height: 5),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(height: 5),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }
