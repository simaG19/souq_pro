import 'package:flutter/material.dart';
import 'package:modernlogintute/model/json_data.dart';
import 'package:modernlogintute/model/json_data2.dart';
import 'package:modernlogintute/model/product_data_model.dart';
import 'package:modernlogintute/view/pages/home.dart';

import '../../model/json_data1.dart';
import '../../model/product_data_model1.dart';
import '../../model/product_data_model2.dart';

class WeeklyBestSellers extends StatefulWidget {
  const WeeklyBestSellers({super.key});

  @override
  State<WeeklyBestSellers> createState() => _WeeklyBestSellersState();
}

class _WeeklyBestSellersState extends State<WeeklyBestSellers> {
  bool isGrid = true;
  late List<ProductDataModel1> _productModels1;
  late List<TopProduct1> _topProducts1; // (grid)
  late List<TopListProduct1> _topListProducts1; // (list)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.keyboard_backspace_rounded),
          color: Colors.grey[700],
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            color: Colors.grey[700],
            onPressed: () {},
          ),
        ],
        title: Text(
          isGrid ? 'Shop Grid' : 'Shop List',
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width,
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
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isGrid = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  isGrid ? Colors.grey[700] : Colors.white,
                              backgroundColor: isGrid
                                  ? Colors.white
                                  : const Color.fromARGB(255, 231, 61, 115),
                            ),
                            child: const Icon(
                              Icons.format_list_bulleted_rounded,
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isGrid = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  isGrid ? Colors.white : Colors.grey[700],
                              backgroundColor: isGrid
                                  ? const Color.fromARGB(255, 231, 61, 115)
                                  : Colors.white,
                            ),
                            child: const Icon(
                              Icons.grid_view_outlined,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          FutureBuilder<List<ProductDataModel1>>(
            future: JsonData1.readJsonData1(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                _productModels1 = snapshot.data!.cast<ProductDataModel1>();
                _topProducts1 = _productModels1.map((pdm1) {
                  return TopProduct1(
                    status: pdm1.status ?? '',
                    title: pdm1.name ?? '',
                    image: pdm1.imageURL ?? '',
                    oldPrice: pdm1.oldPrice ?? '',
                    newPrice: pdm1.price ?? '',
                    coin: '',
                  );
                }).toList();
                _topListProducts1 = _productModels1.map((pdm) {
                  return TopListProduct1(
                    status: pdm.status ?? '',
                    image: pdm.imageURL ?? '',
                    title: pdm.name ?? '',
                    oldPrice: pdm.oldPrice ?? '',
                    newPrice: pdm.price ?? '',
                  );
                }).toList();

                return isGrid
                    ? Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: Wrap(
                          runSpacing: 20,
                          children: _topProducts1,
                        ),
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        children: _topListProducts1,
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
    );
  }
}

class TopListProduct1 extends StatelessWidget {
  const TopListProduct1({
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
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        width: MediaQuery.of(context).size.width,
        child: Card(
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 9.0, vertical: 12),
                child: Row(
                  children: [
                    Image.network(
                      image,
                      width: 140,
                      height: 140,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/apple.png',
                          width: 80,
                          height: 90,
                        );
                      },
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Icon(Icons.attach_money,
                                  color: Colors.white),
                            ),
                            const SizedBox(width: 8),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  TextSpan(text: '$newPrice  '),
                                  TextSpan(
                                    text: oldPrice,
                                    style: const TextStyle(
                                      color: Colors.red,
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 191, 191, 34),
                                  borderRadius: BorderRadius.circular(100)),
                              child:
                                  const Icon(Icons.star, color: Colors.white),
                            ),
                            const SizedBox(width: 8),
                            const Text('4.82 (39)'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton.icon(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                      (s) => Colors.green)),
                          icon: const Icon(Icons.shopping_cart),
                          label: const Text('Buy Now'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: IconButton(
                  icon: const Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    status,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
