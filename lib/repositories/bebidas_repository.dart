import 'package:aplic/models/bebidas.dart';

class BebidaRepository {
  static List<Bebida> tabela = [
    Bebida(
        icone: 'images/cocacolaatt.png',
        nome: 'Coca-Cola',
        quantidade: 1,
        ml: 350.0,
        preco: 5.0),

    Bebida(
        icone: 'images/redbull.png',
        nome: 'RedBull',
        quantidade: 1,
        ml: 350.0,
        preco: 7.0),

    Bebida(
        icone: 'images/monster.png',
        nome: 'Monster',
        quantidade: 1,
        ml: 350.0,
        preco: 7.0),

    Bebida(
        icone: 'images/guaranaantartica.png',
        nome: 'Guarana Antartica',
        quantidade: 1,
        ml: 350.0,
        preco: 5.0)            
  ];
}
