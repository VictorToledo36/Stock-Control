import 'package:aplic/models/bebidas.dart';

class BebidaRepository {
  static List<Bebida> tabela = [
    Bebida(
        icone: 'images/cocacola.jpg',
        nome: 'CocaCola',
        preco: 5.0),

    Bebida(
        icone: 'images/redbull.jpg',
        nome: 'RedBull',
        preco: 7.0),

    Bebida(
        icone: 'images/monster.jpg',
        nome: 'Monster',
        preco: 7.0),

    Bebida(
        icone: 'images/guaranaantartica.png',
        nome: 'Guarana Antartica',
        preco: 5.0)            
  ];
}
