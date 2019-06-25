import 'package:flutter/material.dart';
import 'package:flutter_animacoes_complexas/view/login/loginView.dart';
import 'package:flutter_animacoes_complexas/view/principalView.dart';

class NavegacaoHelper {
  static const rotaPrincipal = "/";
  static const rotaLogin = "/login";

  static RouteFactory rotas() {
    return (settings) {
      final Map<String, dynamic> parametros = settings.arguments;
      Widget viewEncontrada;

      switch (settings.name) {
        case rotaPrincipal:
          viewEncontrada = PrincipalView();
          break;

        case rotaLogin:
          viewEncontrada = LoginView();
          break;

        // case rotaNavegacao02:
        //   //Faço aqui a extração dos parâmetros
        //   //String nome = settings.arguments; ==> Se for apenas um parâmetro
        //   String nome = parametros != null ? parametros["nome"] : null;
        //   int idade = parametros != null ? parametros["idade"] : null;

        //   viewEncontrada = Navegacao02View(texto: nome, idade: idade);
        //   break;

        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => viewEncontrada);
    };
  }

// #region Rota não Encontrada
  static RouteFactory rotaNaoEncontrada() {
    return (settings) {
      String rotaNaoEncontrada = settings.name;
      return MaterialPageRoute(builder: (context) => _widgetRotaNaoEncontrada(rotaNaoEncontrada));
    };
  }

  static Widget _widgetRotaNaoEncontrada(String rotaNaoEncontrada) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Rota não encontrada"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Text.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(text: "A rota ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              TextSpan(text: "$rotaNaoEncontrada", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellow)),
              TextSpan(text: " não foi encontrada/definida", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
// #endregion

}
