import 'package:app_examen_2p_71688/data/User.dart';
import 'package:flutter/material.dart';

import '../widgets/NavigationDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
                  'YAMILU',
                  style: TextStyle(fontFamily: 'Tenor Sans', fontSize: 22),
                ),
        
      ),
      body: Column(
          children: [
            Center(
              child: Text(
                  'Hi ' + User.usuario.username! + "!",
                  style: TextStyle(fontFamily: 'Tenor Sans', fontSize: 30, fontWeight: FontWeight.bold),
                ),
            )
          ],
        ),
        drawer: NavigationDrawerWidget(),
      
    );
  }
}
