import 'dart:convert';

import 'package:modernlogintute/model/product_data_model2.dart';
import 'package:flutter/services.dart' as root_bundle;

class JsonData2 {
  static Future<List<ProductDataModel2>> readJsonData2() async {
    final jsonData2 = await root_bundle.rootBundle
        .loadString('assets/jsonfile/productlist2.json');
    final map = json.decode(jsonData2) as Map<String, dynamic>;
    final List<dynamic> list = map['productlist2'] as List<dynamic>;

    return list.map((e) => ProductDataModel2.fromJson(e)).toList();
  }
}
