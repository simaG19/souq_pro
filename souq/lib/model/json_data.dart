import 'dart:convert';

<<<<<<< HEAD:souq/lib/model/json_data.dart
import 'package:modernlogintute/model/product_data_model.dart';
=======
import 'package:modernlogintute/lib/product_data_model.dart';
>>>>>>> fb3986464b082780a18607d271d0a61fdb8810d6:souq/lib/lib/json_data.dart
import 'package:flutter/services.dart' as root_bundle;

class JsonData {
  static Future<List<ProductDataModel>> readJsonData() async {
    final jsonData = await root_bundle.rootBundle
        .loadString('assets/jsonfile/productlist.json');
    final map = json.decode(jsonData) as Map<String, dynamic>;
    final List<dynamic> list = map['productlist'] as List<dynamic>;
<<<<<<< HEAD:souq/lib/model/json_data.dart

    return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }
}
=======
    
    return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }
}
>>>>>>> fb3986464b082780a18607d271d0a61fdb8810d6:souq/lib/lib/json_data.dart
