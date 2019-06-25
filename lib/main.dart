import 'helper/navegacaoHelper.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      onGenerateRoute: NavegacaoHelper.rotas(),
      onUnknownRoute: NavegacaoHelper.rotaNaoEncontrada(),
      title: "Animações Complexas",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
