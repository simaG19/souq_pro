import 'dart:convert';

import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:simon/components/appbar.dart';
import 'package:flutter/services.dart' as root_bundle;
import 'package:modernlogintute/lib/product_data_model.dart';
import '../../lib/product_data_model1.dart';
import '../../lib/product_data_model2.dart';
import '../components/appbar.dart';

import 'package:flutter/material.dart';

import '../../lib/product_data_model.dart';
import '../components/appbar.dart';
import '../components/appbar1.dart';

class Shop extends StatelessWidget {
  Shop({super.key});

  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;

  late List<ProductDataModel> _productModels;

  late List<TopProduct> _topProducts;

  Future<List<ProductDataModel>> readJsonData() async {
    //var root_bundle;
    final jsonData = await root_bundle.rootBundle
        .loadString('assets/jsonfile/productlist.json');
    final map = json.decode(jsonData) as Map<String, dynamic>;
    final List<dynamic> list = map['productlist'] as List<dynamic>;
    return list.map((e) => ProductDataModel.fromJson(e)).toList();
    // return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      const MyAppBar1(),
      SliverToBoxAdapter(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          width: w,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'All Products',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    //  SizedBox(width: 5),
                    SizedBox(
                      height: 37,
                      width: 39,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 231, 61, 115),
                            foregroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                          ),
                          onPressed: () {},
                          child: Icon(Icons.list)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              FutureBuilder<List<ProductDataModel>>(
                future: readJsonData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    _productModels = snapshot.data!;
                    _topProducts = _productModels
                        .map((pdm) => TopProduct(
                              status: pdm.status ?? '',
                              title: pdm.name ?? '',
                              image: pdm.imageURL ?? '',
                              oldPrice: pdm.oldPrice ?? '',
                              newPrice: pdm.price ?? '',
                            ))
                        .toList();

                    return Wrap(
                      runSpacing: 20,
                      children: _topProducts,
                    );
                  } else if (snapshot.hasError) {
                    return const Center(child: Text("Error"));
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class TopProduct extends StatelessWidget {
  const TopProduct({
    super.key,
    this.status = 'Sale',
    required this.image,
    required this.title,
    required this.oldPrice,
    required this.newPrice,
  });

  final String status;
  final String image;
  final String title;
  final String oldPrice;
  final String newPrice;

  @override
  Widget build(BuildContext context) {
    Color statusColor;
    if (status == 'Sale') {
      statusColor = Colors.green;
    } else if (status == 'New') {
      statusColor = const Color.fromARGB(255, 11, 11, 193);
    } else {
      statusColor = const Color.fromARGB(255, 231, 61, 115);
    }

    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2.1,
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: statusColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(status,
                            style: const TextStyle(color: Colors.white)),
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                    ]),
                Image.network(
                  image,
                  width: 140,
                  height: 140,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset('assets/apple.png',
                        width: 80, height: 90);
                  },
                ),
                const SizedBox(height: 35),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    Text(
                      newPrice,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 102, 232, 41),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        //overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      oldPrice,
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Color.fromARGB(218, 86, 99, 90),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Icon(Icons.star,
                          color: Colors.yellowAccent[700], size: 15),
                      Icon(Icons.star,
                          color: Colors.yellowAccent[700], size: 15),
                      Icon(Icons.star,
                          color: Colors.yellowAccent[700], size: 15),
                      Icon(Icons.star,
                          color: Colors.yellowAccent[700], size: 15),
                      Icon(Icons.star,
                          color: Colors.yellowAccent[700], size: 15),
                    ]),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: Colors.green[500],
                      ),
                      child: const Icon(
                        Icons.add,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // class TopProduct extends StatelessWidget {
  // const TopProduct({
  //   super.key,
  //   this.status = 'Sale',
  //   required this.image,
  //   required this.title,
  //   required this.oldPrice,
  //   required this.newPrice,
  // });

  // final String status;
  // final String image;
  // final String title;
  // final String oldPrice;
  // final String newPrice;
}
