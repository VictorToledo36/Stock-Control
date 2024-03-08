import 'package:flutter/material.dart';

class PageBebidasDetalhes extends StatefulWidget {

  @override
  State<PageBebidasDetalhes> createState() => _PageBebidasDetalhesState();
}

class _PageBebidasDetalhesState extends State<PageBebidasDetalhes> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe de Bebidas'),
      ),
      body: const Center(
        child: Text('Detalhe de Bebidas'),
      ),
    );
  }
}