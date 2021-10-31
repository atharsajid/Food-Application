import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';
import 'package:food_app/homescreen.dart/hscreen_configration.dart';

class NavigarionDrawer extends StatefulWidget {
  const NavigarionDrawer({Key? key}) : super(key: key);

  @override
  _NavigarionDrawerState createState() => _NavigarionDrawerState();
}

class _NavigarionDrawerState extends State<NavigarionDrawer> {
  Color color1 = primarycolor;
  Color color2 = backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: color1,
        child: Column(
          children: [
            Container(
              height: 180,
              color: color1,
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    circleContainer(80, 80, 3, dpimage),
                    Text(
                      "Muhammad Athar",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: color2,
              height: 10,
              thickness: 2,
              indent: 30,
              endIndent: 30,
            ),
            Container(
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  itemCount: menuitem.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      MenuCardMethod(menu: menuitem[index])),
            ),
          ],
        ),
      ),
    );
  }
}

appbar() {
  return AppBar(
    foregroundColor: primarycolor,
    shadowColor: Colors.transparent,
    backgroundColor: backgroundcolor,
    actions: [
      circleContainer(60, 60, 3, dpimage),
      Padding(padding: EdgeInsets.only(left: 0, top: 0))
    ],
  );
}

class MenuCardMethod extends StatelessWidget {
  final MenuItem menu;
  const MenuCardMethod({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color white = Colors.white;
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(
          menu.icon,
          color: white,
          size: 30,
        ),
        title: Text(
          menu.text,
          style: TextStyle(color: white, fontSize: 20),
        ),
        onTap: () {},
      ),
    );
  }
}

class MenuItem {
  final String text;
  final IconData icon;
  MenuItem({
    required this.text,
    required this.icon,
  });
}

List<MenuItem> menuitem = [
  MenuItem(text: "Favourites", icon: Icons.favorite),
  MenuItem(
    text: "Orders",
    icon: Icons.collections_bookmark_sharp,
  ),
  MenuItem(text: "Profile", icon: Icons.person),
  MenuItem(text: "Vouchers", icon: Icons.card_giftcard_outlined),
  MenuItem(text: "Help Center", icon: Icons.help),
  MenuItem(text: "Setting", icon: Icons.settings),
  MenuItem(text: "Log Out", icon: Icons.logout),
];
