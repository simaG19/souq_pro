import 'package:flutter/material.dart';

class MyAppBar1 extends StatelessWidget {
  const MyAppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      elevation: 0,
      leading: const Icon(
        Icons.reply,
        color: Colors.black,
      ),
      actions: [
        IconButton(
          color: Color.fromARGB(255, 176, 158, 158),
          icon: const Icon(Icons.settings),
          iconSize: 33,
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ],
      centerTitle: true,
      title: const SizedBox(
        //width: MediaQuery.of(context).size.width * 0.6,
        height: 38,
        child: Text(
          'Shop Grid',
          style: TextStyle(color: Color.fromARGB(255, 101, 96, 96)),
        ),
      ),
    );
  }
}
