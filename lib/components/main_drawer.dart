import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  Widget _createItem(IconData icon, String label) {
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
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/drawer_image.png"),
                fit: BoxFit.scaleDown,
              ),
            ),
            alignment: Alignment.bottomCenter,
            height: 250,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            // color: Theme.of(context).accentColor,
            child: Text(
              "Vamos cozinhar?",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 26,
                color: Theme.of(context).primaryColor,
                fontFamily: 'RobotoCondensed',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _createItem(Icons.restaurant, 'Refeições'),
          _createItem(Icons.settings, 'Configurações'),
        ],
      ),
    );
  }
}
