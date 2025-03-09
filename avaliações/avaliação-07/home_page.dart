// Sabrinna do Nascimento Facundo
// Maria Eduarda Queiroz


import 'package:flutter/material.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Inicial feita por Sabrinna do Nascimento e Maria Eduarda Queiroz'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPage()),
            );
          },
          child: Text('Ir para Detalhes'),
        ),
      ),
    );
  }
}
