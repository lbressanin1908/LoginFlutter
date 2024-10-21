import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final _usuarioController = TextEditingController();
  final _senhaController = TextEditingController();

  Future<void> _fazerLogin() async {
    String usuario = _usuarioController.text;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', usuario);

    Navigator.pushReplacementNamed(context, '/telaListagem');
  }

  Future<void> _navegarParaCadastro() async {
    Navigator.pushNamed(context, '/telaCadastro');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela de Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usuarioController,
              decoration: InputDecoration(labelText: 'Usuário'),
            ),
            TextField(
              controller: _senhaController,
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _fazerLogin,
              child: Text('Login'),
            ),
            TextButton(
              onPressed: _navegarParaCadastro,
              child: Text('Cadastrar-se'),
            ),
          ],
        ),
      ),
    );
  }
}
