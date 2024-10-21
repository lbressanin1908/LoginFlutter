import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'telaLogin.dart';
import 'telaListagem.dart';
import 'telaCadastro.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');

  runApp(MyApp(initialRoute: token != null ? '/telaListagem' : '/telaLogin'));
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  MyApp({required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: initialRoute,
      routes: {
        '/telaLogin': (context) => TelaLogin(),
        '/telaCadastro': (context) => TelaCadastro(),
        '/telaListagem': (context) => TelaListagem(),
      },
    );
  }
}
