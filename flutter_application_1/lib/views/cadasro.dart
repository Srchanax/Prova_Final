import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => CadastroPage(),
      },
    );
  }
}

class CadastroPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.all(8.0),
          color: Colors.amber, 
          child: Row(
            children: [
              SizedBox(width: 8), // Adicione algum espaçamento entre o ícone e o título
              Text(
                'Cadastro(Túllyo Honorio Araújo da Silva)',
                style: TextStyle(color: Colors.black), // Cor do texto
              ),
            ],
          ),
        ),
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
                // Lógica para salvar o usuário
                // ...
              },
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
