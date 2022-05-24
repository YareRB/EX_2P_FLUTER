import 'package:app_examen_2p_71688/pages/AccountPage.dart';
import 'package:app_examen_2p_71688/pages/ProductsPAge.dart';
import 'package:app_examen_2p_71688/utelerias/ColorPalette.dart';
import 'package:app_examen_2p_71688/utelerias/VariableGlobales.dart';
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
          menuItem(Icons.account_balance_sharp, "Blush", context, "blush"),
          menuItem(Icons.access_time_filled_rounded, "Bronzer", context, "bronzer"),
          menuItem(Icons.zoom_out_outlined, "Eyebrow", context, "eyebrow"),
          menuItem(Icons.yard_sharp, "Eyeliner", context, "eyeliner"),
          menuItem(Icons.workspaces_rounded, "Eyeshadow", context, "eyeshadow"),
          menuItem(Icons.wine_bar_rounded, "Foundation", context, "foundation"),
          menuItem(Icons.ad_units_rounded, "Lip Liner", context, "lip_liner"),
          menuItem(Icons.wifi_channel, "Lipstick", context, "lipstick"),
          menuItem(Icons.remove_red_eye, "Mascara", context, "mascara"),
          menuItem(Icons.nights_stay_outlined, "Nail Polish", context,"nail_polish"),
          Padding(
            padding: const EdgeInsets.only(left: 220),
            child: (Ink(
              child: ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 28,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const AccountPage()));
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
