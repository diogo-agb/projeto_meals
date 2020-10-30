import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/app_routes.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  Widget _createItem(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).primaryColor,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.pink),
              ),
              image: DecorationImage(
                image: AssetImage("assets/de_comer_splash.png"),
                fit: BoxFit.fitHeight,
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.pink[50], Colors.pink],
              ),
            ),
            alignment: Alignment.bottomCenter,
            height: 250,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            // color: Theme.of(context).accentColor,
            // child: Text(
            //   "Vamos cozinhar?",
            //   style: TextStyle(
            //     fontWeight: FontWeight.w500,
            //     fontSize: 26,
            //     color: Colors.white,
            //     fontFamily: 'RobotoCondensed',
            //   ),
            // ),
          ),
          SizedBox(
            height: 20,
          ),
          _createItem(
            Icons.restaurant,
            'Refeições',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME),
          ),
          _createItem(
            Icons.settings,
            'Configurações',
            () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("Versão: ${ConstantsApp.version}"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
