import 'package:flutter/material.dart';
import 'package:modernlogintute/lib/json_data.dart';
//import 'package:simon/components/appbar.dart';

import 'package:modernlogintute/lib/product_data_model.dart';
import 'package:modernlogintute/view/pages/all_products.dart';
import '../components/appbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController(initialPage: 0);
  int _activePage = 0;
  late List<ProductDataModel> _productModels;
  late List<TopProduct> _topProducts;

  final List<Widget> _pages = [
    const Banner(
      header: 'Amazon Echo',
      subtitle: '3rd Generation, Charcoal',
      color: Color.fromARGB(255, 45, 180, 150),
      image1: 'assets/s1.jpg',
    ),
    const Banner(
      header: 'Light Candle',
      subtitle: 'Now only \$22',
      color: Color.fromARGB(255, 0, 0, 0),
      image1: 'assets/Candle1.jpg',
    ),
    const Banner(
      header: 'Besttt Furniture',
      subtitle: '3 years warranty',
      color: Color.fromARGB(255, 208, 4, 100),
      image1: 'assets/cat.jpg',
    ),
  ];

  final List<Widget> _saleItems = [
    const SaleItem(
      image: 'assets/1.png',
      title: 'Black Table Lamp',
      newPrice: '\$7.99',
      oldPrice: '\$15',
      percentSold: 92,
    ),
    const SaleItem(
      image: 'assets/2.png',
      title: 'Modern Sofa',
      newPrice: '\$36',
      oldPrice: '\$49',
      percentSold: 28,
    ),
    const SaleItem(
      image: 'assets/3.png',
      title: 'Classic Garden Chair',
      newPrice: '\$36',
      oldPrice: '\$49',
      percentSold: 28,
    ),
  ];

  // final List<Widget> _topProducts = [
  //   const TopProducts(
  //     image: 'assets/11.png',
  //     title: 'Black Table Lamp',
  //     percentSold: 92,
  //   ),
  //   const TopProducts(
  //     image: 'assets/1.png',
  //     title: 'Black Table Lamp',
  //     percentSold: 92,
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const MyAppBar(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 190,
            child: Stack(
              children: [
                PageView.builder(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _activePage = page;
                    });
                  },
                  itemCount: _pages.length,
                  itemBuilder: (context, index) {
                    return _pages[index % _pages.length];
                  },
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(_pages.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: InkWell(
                          onTap: () {
                            _pageController.animateToPage(index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: CircleAvatar(
                            radius: _activePage == index ? 8 : 5,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          sliver: SliverFixedExtentList(
            itemExtent: 295,
            delegate: SliverChildListDelegate([
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Product Category',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: w / 3.2,
                          height: 120,
                          child: InkWell(
                            onTap: () {},
                            child: const Card(
                              color: Colors.white,
                              margin: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(height: 8),
                                  Text('Women\'s')
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w / 3.2,
                          height: 120,
                          child: const Card(
                            color: Colors.white,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.local_drink,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 7),
                                Text('Juice')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w / 3.2,
                          height: 120,
                          child: const Card(
                            color: Colors.white,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.local_pizza,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 8),
                                Text('Foods')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: w / 3.2,
                          height: 120,
                          child: const Card(
                            color: Colors.white,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 8),
                                Text('Sports')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w / 3.2,
                          height: 120,
                          child: const Card(
                            color: Colors.white,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.man,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 8),
                                Text('Men\'s')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w / 3.2,
                          height: 120,
                          child: const Card(
                            color: Colors.white,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.beach_access,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 8),
                                Text('Travel')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Flash Sale',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 37,
                          width: 99,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 11, 11, 193),
                              foregroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                            ),
                            onPressed: () async {
                              await JsonData.readJsonData();
                            },
                            child: const Text(
                              'View all',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: _saleItems.length,
                        itemBuilder: (context, index) {
                          return _saleItems[index];
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
        // TODO: another sliver

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
                        'Top Products',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 37,
                        width: 99,
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
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const AllProducts(),
                              ),
                            );
                          },
                          child: const Text(
                            'View all',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                FutureBuilder<List<ProductDataModel>>(
                  future: JsonData.readJsonData(),
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
      ],
    );
  }

//  List<Map<String, dynamic>> jsonData = jsonDecode(jsonString);
//     List<ProductDataModel> products =
//         jsonData.map((json) => ProductDataModel.fromJson(json)).toList();
}

class SaleItem extends StatelessWidget {
  const SaleItem({
    super.key,
    required this.image,
    required this.title,
    required this.newPrice,
    required this.oldPrice,
    required this.percentSold,
  });

  final String image;
  final String title;
  final String newPrice;
  final String oldPrice;
  final int percentSold;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 170,
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset(image, width: 80, height: 90, fit: BoxFit.fill),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Color.fromARGB(255, 9, 83, 143),
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(text: '$newPrice  '),
                      TextSpan(
                        text: oldPrice,
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Text('$percentSold% Sold Out'),
                const SizedBox(height: 5),
                SizedBox(
                  height: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.black12,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          percentSold >= 85 ? Colors.red : Colors.blue),
                      value: double.parse(percentSold.toString()) / 100,
                      minHeight: 5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({
    super.key,
    required this.header,
    required this.subtitle,
    required this.image1,
    required this.color,
  });

  final String header;
  final String subtitle;
  final Color color;
  final String image1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      color: color,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                header,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 7),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 249, 111, 111),
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                onPressed: () {},
                child: const Text('Buy Now'),
              ),
            ],
          ),
          const SizedBox(width: 35),
          Image.asset(image1),
        ],
      ),
    );
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
                const SizedBox(height: 7),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 7),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Color.fromARGB(255, 9, 83, 143),
                      fontSize: 16,
                    ),
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
                const SizedBox(height: 7),
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
                      style:
                          ElevatedButton.styleFrom(shape: const CircleBorder()),
                      child: const Icon(Icons.add),
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
}
