import 'package:aplic/pages/bebidas_detalhes_pages.dart';
import 'package:aplic/pages/doces_detalhes_pages.dart';
import 'package:flutter/material.dart';
import 'package:aplic/pages/cadastro_produtos_pages.dart';

PreferredSizeWidget CustomAppBar() {
  return AppBar(
    title: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: const Icon(
            Icons.store,
            size: 30,
            color: Colors.orange,
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'Controle de Estoque',
          style: TextStyle(fontSize: 20),
        ),
      ],
    ),
  );
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final List<String> nomesDosProdutos = [
      'Bebidas',
      'Doces',
    ];

    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.orange,
      body: Stack(
        children: [
          Positioned(
            top: kToolbarHeight +
                -50, 
            left: 10, 
            right: 10, 
            child: Center(
              child: Image.asset(
                'images/logoatt.png', 
                width: 300, 
                height: 300, 
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
                top: 310,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: List.generate(
                        nomesDosProdutos.length,
                        (index) {
                          String imagePath;
                          if (index == 0) {
                            imagePath = 'images/bebidas.png';
                          } else if (index == 1) {
                            imagePath = 'images/doces.jpg';
                          } else {
                            imagePath = 'images/doces.jpg';
                          }
                          return GestureDetector(
                            onTap: () {
                              if (index == 0) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>  PageBebidasDetalhes(),
                                  ),
                                );
                              } else if (index == 1) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>  PageDocesDetalhes(),
                                  ),
                                );
                              }
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              elevation: 5.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    imagePath,
                                    width: 100,
                                    height: 100,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    nomesDosProdutos[index],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom:
                30, // Ajusta a distância do container em relação ao fundo da tela
            left:
                10, // Ajusta a distância do container em relação à lateral esquerda da tela
            right:
                10, // Ajusta a distância do container em relação à lateral direita da tela
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.deepOrangeAccent,
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Cadastro',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const PageCadastroProdutos(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.local_grocery_store),
                        label: const Text('Categorias'),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const PageCadastroProdutos(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.assignment),
                        label: const Text('Produtos'),
                      ),
                    ],
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
