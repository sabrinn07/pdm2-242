// Sabrinna do Nascimento Facundo
// Maria Eduarda Queiroz


import 'package:flutter/material.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Inicial'),
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