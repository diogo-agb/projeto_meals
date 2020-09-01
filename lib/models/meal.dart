import 'package:flutter/foundation.dart';
//Pode importar o @required tante de Material quando do Foundation

enum Complexity {
  Simple,
  Medium,
  Difficult,
}
enum Cost {
  Cheap,
  Fair,
  Expensive,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final Cost cost;
  final Complexity complexity;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.ingredients,
    @required this.steps,
    @required this.isGlutenFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.isLactoseFree,
    @required this.complexity,
    @required this.cost,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return "Simples";
      case Complexity.Medium:
        return "Média";
      case Complexity.Difficult:
        return "Difícil";
      default:
        return "Desconhecida";
    }
  }

  String get costText {
    switch (cost) {
      case Cost.Cheap:
        return "Baixo";
      case Cost.Fair:
        return "Medio";
      case Cost.Expensive:
        return "Alto";
      default:
        return "Desconhecido";
    }
  }
}
