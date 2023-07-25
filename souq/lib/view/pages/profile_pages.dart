import 'package:flutter/material.dart';

class profile_pages extends StatefulWidget {
  const profile_pages({Key? key}) : super(key: key);

  @override
  State<profile_pages> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<profile_pages> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  final image = const NetworkImage(
      'https://img.freepik.com/free-photo/man-with-arms-crossed-white-background_1187-2589.jpg?w=360&t=st=1689881265~exp=1689881865~hmac=420d8f15aedaf6c28988fde0ff47886802b35cbb7a79d3fb79c3d091be2a11f9');

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: drawerKey,
      shape: const RoundedRectangleBorder(),
      backgroundColor: Color.fromARGB(255, 11, 80, 218),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 235,
                      padding: const EdgeInsets.only(
                        top: 70,
                        bottom: 10,
                      ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipOval(
                              child: Material(
                                child: Ink.image(
                                  image: image,
                                  fit: BoxFit.cover,
                                  width: 90,
                                  height: 90,
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            const Text(
                              'Suha Jannat',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 3),
                            const Text(
                              'Balance  \$8,923.45',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    drawerItem(context, Icons.person_2_outlined, 'My Profile'),
                    drawerItem(
                        context, Icons.notifications_none, 'Notifications'),
                    const ExpansionTile(
                      leading: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Shop Pages',
                        style: TextStyle(color: Colors.white),
                      ),
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      tilePadding: EdgeInsets.symmetric(horizontal: 50),
                      children: <Widget>[
                        Text(
                          '- Shop Grid\n \n- Shop List \n \n- Product Details\n \n- Featured Products \n ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //   drawerItem(context, Icons.pages, 'Shop Grid'),
                        //   drawerItem(context, Icons.pages, 'Shop List'),
                        //   drawerItem(
                        //       context, Icons.not_interested, 'Product Details'),
                        //   drawerItem(
                        //       context, Icons.not_interested, 'Featured Products'),
                        //   drawerItem(context, Icons.pages, 'Flash Sale'),
                      ],
                    ),
                    drawerItem(context, Icons.plagiarism_outlined, 'All Pages'),
                    const ExpansionTile(
                      leading: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                      title: Text(
                        'My Wishlist',
                        style: TextStyle(color: Colors.white),
                      ),
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      tilePadding: EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      children: <Widget>[
                        Text(
                          '- Wishlist Grid\n \n- Wishlist Grid \n ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    drawerItem(context, Icons.settings, 'Settings'),
                    drawerItem(context, Icons.power_settings_new, 'Sign Out'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget drawerItem(BuildContext context, IconData icon, String text) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
        onTap: () {},
        leading: Text(
          String.fromCharCode(icon.codePoint),
          style: TextStyle(
            fontSize: 26,
            inherit: false,
            color: Colors.white,
            fontWeight: FontWeight.w100,
            fontFamily: icon.fontFamily,
            package: icon.fontPackage,
          ),
        ),
        title: Text(text,
            style: const TextStyle(color: Colors.white, fontSize: 16)),
        minLeadingWidth: 10,
        contentPadding: const EdgeInsets.symmetric(horizontal: 50),
      ),
    );
  }
}
