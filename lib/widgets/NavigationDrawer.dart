import 'package:app_examen_2p_71688/pages/LoginPage.dart';
import 'package:app_examen_2p_71688/pages/ProductsPAge.dart';
import 'package:app_examen_2p_71688/utelerias/ColorPalette.dart';
import 'package:app_examen_2p_71688/utelerias/VariableGlobales.dart';
import 'package:app_examen_2p_71688/yamilu_icons.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorPalette.colorPink1,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              'Yareli Ramírez',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Tenor Sans',
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            accountEmail: Text(
              'yareram78@gmail.com',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Tenor Sans', fontSize: 15),
            ),
            currentAccountPicture: CircleAvatar(
                backgroundColor: ColorPalette.colorPink1,
                child: Icon(
                  Icons.person,
                  color: ColorPalette.colorPink4,
                  size: 30,
                )),
          ),
          menuItem(Yamilu.blush, "Blush", context, "blush"),
          menuItem(Yamilu.bronzer, "Bronzer", context, "bronzer"),
          menuItem(Yamilu.eyebrow, "Eyebrow", context, "eyebrow"),
          menuItem(Yamilu.eyerliner, "Eyeliner", context, "eyeliner"),
          menuItem(Yamilu.eyeshadow, "Eyeshadow", context, "eyeshadow"),
          menuItem(Yamilu.foundation, "Foundation", context, "foundation"),
          menuItem(Yamilu.lipliner, "Lip Liner", context, "lip_liner"),
          menuItem(Yamilu.lipstick, "Lipstick", context, "lipstick"),
          menuItem(Yamilu.mascara_1, "Mascara", context, "mascara"),
          menuItem(Yamilu.foundation, "Nail Polish", context,"nail_polish"),
          Padding(
            padding: const EdgeInsets.only(left: 220),
            child: (Ink(
              child: ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.black,
                  size: 28,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => LoginPage()));
                },
              ),
            )),
          ),
        ],
      ),
    );
  }
}

Widget menuItem(IconData icon, String title, BuildContext context,
    String parameterConsult) {
  return Ink(
    child: ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
        size: 28,
      ),
      title: Text(title,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontFamily: 'Tenor Sans')),
      onTap: () {
        VariableGlobales.typeProduct = parameterConsult;
        VariableGlobales.titleType = title;
        Navigator.of(context).pop();
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const ProductsPage()));
      },
    ),
  );
}
