import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_application_1/views/editar.dart';

class VisualizacaoPage extends StatelessWidget {
  final User user;

  VisualizacaoPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visualização de Usuário'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Nome: ${user.name}'),
            Text('Email: ${user.email}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EdicaoPage(user: user),
                  ),
                );
              },
              child: Text('Editar Cadastro'),
            ),
          ],
        ),
      ),
    );
  }
}
