// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:modernlogintute/lib/product_data_model.dart';

// @override
//   Widget build(BuildContext context) {
//     List products = (jsonData['productlist'] as List<dynamic>)
//         .map((json) => ProductDataModel.fromJson(json))
//         .toList();
//     Map<String, dynamic> jsonData = jsonDecode(products);

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Product List')),
//         body: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, // Number of columns in the grid
//             crossAxisSpacing: 10, // Spacing between columns
//             mainAxisSpacing: 10, // Spacing between rows
//           ),
//           itemCount: products.length,
//           itemBuilder: (context, index) {
//             return Container(
//               color: Colors.grey[200],
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   Image.network(
//                     products[index].imageUrl,
//                     height: 100,
//                     width: 100,
//                   ),
//                   SizedBox(height: 8),
//                   Text(products[index].name),
//                   Text(products[index].category),
//                   Text(products[index].price),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
