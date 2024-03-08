import 'package:flutter/material.dart';

class PageDocesDetalhes extends StatefulWidget {
  const PageDocesDetalhes({super.key});

  @override
  State<PageDocesDetalhes> createState() => _PageDoceDetalhesState();
}

class _PageDoceDetalhesState extends State<PageDocesDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe dos Doces'),
      ),
      body: const Center(
        child: Text('Detalhe dos Doces'),
      ),
    );
  }
}