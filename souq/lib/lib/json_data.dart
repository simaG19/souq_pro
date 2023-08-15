import 'dart:convert';

import 'package:modernlogintute/lib/product_data_model.dart';
import 'package:flutter/services.dart' as root_bundle;

class JsonData {
  static Future<List<ProductDataModel>> readJsonData() async {
    final jsonData = await root_bundle.rootBundle
        .loadString('assets/jsonfile/productlist.json');
    final map = json.decode(jsonData) as Map<String, dynamic>;
    final List<dynamic> list = map['productlist'] as List<dynamic>;
    
    return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }
}