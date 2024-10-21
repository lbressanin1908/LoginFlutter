import 'package:flutter/material.dart';

class TelaListagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela de Listagem')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bem-vindo à Tela de Listagem!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/telaLogin');
              },
              child: Text('Voltar para Login'),
            ),
          ],
        ),
      ),
    );
  }
}
