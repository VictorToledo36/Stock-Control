import 'package:flutter/material.dart';

class PageCadastroProdutos extends StatefulWidget {
  const PageCadastroProdutos({Key? key}) : super(key: key);

  @override
  State<PageCadastroProdutos> createState() => _PageCadastroProdutosState();
}

class _PageCadastroProdutosState extends State<PageCadastroProdutos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Produtos'),
      ),
      body: const Center(
        child: Text('Página de Cadastro de Produtos'),
      ),
    );
  }
}


