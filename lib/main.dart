import 'package:flutter/material.dart';
// import './screens/categories_screen.dart';
import './screens/categories_meals_screen.dart';
import './utils/app_routes.dart';
import './screens/meal_detail_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import './screens/tabs_screen.dart';
import './screens/settings_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber[300],
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline2: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
              // ignore: deprecated_member_use
              // title: TextStyle(
              //   fontSize: 20,
              //   fontFamily: 'RobotoCondensed',
              // ),
            ),
      ),
      home: AnimatedSplashScreen(
        backgroundColor: Colors.white,
        splashTransition: SplashTransition.fadeTransition,
        splash: "assets/meu_logo_2.png",
        duration: 7000,
        nextScreen: TabsScreen(),
      ),
      // home: CategoriesScreen(), também é possível chamar a tela principal através das rotas (routes)
      // initialRoute: '/', Rota inicial poderia ser definida no initialRoute mas não funcionou

      // Definindo as rotas através da definição de contstantes
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(),
      },
      // onGenerateRoute: (settings) {
      //   if (settings.name == "/alguma-coisa") {
      //     return null;
      //   } else if (settings.name == "/outra-coisa") {
      //     return null;
      //   } else {
      //     return MaterialPageRoute(
      //       builder: (_) => CategoriesScreen(),
      //     );
      //   }
      // },
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(builder: (_) => CategoriesScreen());
      // },
    );
  }
}
