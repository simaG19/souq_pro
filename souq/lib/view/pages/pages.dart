import 'package:flutter/material.dart';

import '../components/appbar.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
      MyAppBar(),
      SliverToBoxAdapter(
        child: Column(
          children: [
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "All Pages",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Home',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 270),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shop Grid',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 210),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width: 5),
                      Text(
                        'Shop List',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Details',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Catagory',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //  SizedBox(width: 270),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shop Grid',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 210),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width: 5),
                      Text(
                        'Shop List',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Details',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Home',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 270),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shop Grid',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 210),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width: 5),
                      Text(
                        'Shop List',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Details',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Home',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 270),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shop Grid',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 210),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width: 5),
                      Text(
                        'Shop List',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Details',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Home',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 270),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shop Grid',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 210),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width: 5),
                      Text(
                        'Shop List',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Details',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Home',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 270),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shop Grid',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 210),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width: 5),
                      Text(
                        'Shop List',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Details',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Home',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 270),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shop Grid',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 210),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SizedBox(width: 5),
                      Text(
                        'Shop List',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 375,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Details',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
    ]);
  }
}
