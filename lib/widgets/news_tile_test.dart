// import 'package:flutter/material.dart';
// import 'package:news_app/models/artical_model.dart';

// class NewsTile extends StatelessWidget {
//   const NewsTile({super.key, required this.articalModel});

//   final ArticalModel articalModel;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 8.0),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadiusGeometry.circular(8),
//             child: Image.network(
//               articalModel.image ?? 'https://www.hollywoodreporter.com/wp-content/uploads/2026/10/musktrump.jpg?crop=0px%2C63px%2C4961px%2C2779px&resize=1440%2C810',
//               height: 200,
//               width: double.infinity,
//               fit: BoxFit.fill,
//             ),
//           ),
//           const SizedBox(height: 12),
//           Text(
//             articalModel.tiltle ?? 'NOT Title Found',
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             articalModel.subTitle ?? 'NOT Descrubsion Found',
//             maxLines: 2,
//             style: TextStyle(color: Colors.grey, fontSize: 14),
//           ),
//         ],
//       ),
//     );
//   }
// }