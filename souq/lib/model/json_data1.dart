import 'dart:convert';

import 'package:modernlogintute/model/product_data_model1.dart';
import 'package:flutter/services.dart' as root_bundle;

class JsonData1 {
  static Future<List<ProductDataModel1>> readJsonData1() async {
    final jsonData1 = await root_bundle.rootBundle
        .loadString('assets/jsonfile/productlist1.json');
    final map = json.decode(jsonData1) as Map<String, dynamic>;
    final List<dynamic> list = map['productlist1'] as List<dynamic>;

    return list.map((e) => ProductDataModel1.fromJson(e)).toList();
  }
}
