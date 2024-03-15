import 'package:aplic/repositories/bebidas_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageBebidasDetalhes extends StatefulWidget {
  @override
  State<PageBebidasDetalhes> createState() => _PageBebidasDetalhesState();
}

class _PageBebidasDetalhesState extends State<PageBebidasDetalhes> {
  @override
  Widget build(BuildContext context) {
    final tabela = BebidaRepository.tabela;
    NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detalhe de Bebidas'),
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int bebida) {
            return ListTile(
              leading: SizedBox(
                width: 40,
                child: Image.asset(tabela[bebida].icone),
              ),
              title: Text(tabela[bebida].nome),
              trailing: Text(real.format(tabela[bebida].preco)),
            );
          },
          padding: const EdgeInsets.all(16),
          separatorBuilder: (_, __) => Divider(),
          itemCount: tabela.length,
        ));
  }
}
