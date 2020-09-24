import 'package:flutter/material.dart';
import './categories_screen.dart';
import './favorite_screen.dart';
import '../components/main_drawer.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  const TabsScreen(this.favoriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;
  List<Map<String, Object>> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      {
        "title": "Categorias",
        "screen": CategoriesScreen(),
      },
      {
        "title": "Favoritos",
        "screen": FavoriteScreen(widget.favoriteMeals),
      },
    ];
  }

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              _screens[_selectedScreenIndex]['title'],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: _screens[_selectedScreenIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Theme.of(context).primaryColor, comentado devido o type ser BottomNavigationBarType
        // .shifting,
        onTap: _selectScreen,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType
            .shifting, // Para aplicar uma pequena animação na transição da aba
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text("Categorias"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text("Favoritos"),
          ),
        ],
      ),
    );
  }
}

/* Uma das formas para criar a navegação por abas, estrutura apenas 
copiada para esta área de exemplo, a navegação final foi definida com o 
bottomNavigationBar que está dentro do Scaffold

return ->
DefaultTabController(
      length: 2,
      // initialIndex: 1, Serve para definir qual será a aba padrão, por padrão o inice é o valor 0
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Vamos cozinhar?",
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: "Categorias",
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "Favoritos",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavoriteScreen(),
          ],
        ),
      ),
    );

















 */
