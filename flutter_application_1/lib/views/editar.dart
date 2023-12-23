import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user.dart';

class EdicaoPage extends StatelessWidget {
  final User user;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  EdicaoPage({required this.user}) {
    nameController.text = user.name;
    emailController.text = user.email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edição de Usuário'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para salvar as alterações
                user.name = nameController.text;
                user.email = emailController.text;
                Navigator.pop(context); // Voltar para a tela de visualização
              },
              child: Text('Salvar Alterações'),
            ),
          ],
        ),
      ),
    );
  }
}
