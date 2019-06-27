import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'animacoes/loginAnimacao.dart';
import 'package:flutter_animacoes_complexas/view/login/widgets/loginConteudoWidget.dart';
import 'package:flutter_animacoes_complexas/view/login/widgets/loginBotaoCadastroWidget.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 1;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login"),
      //   centerTitle: true,
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("imagens/background.jpg"), fit: BoxFit.cover),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 70, bottom: 32),
                      child: Image.asset("imagens/tickicon.png", width: 150, height: 150, fit: BoxFit.contain),
                    ),
                    LoginConteudoWidget(),
                    LoginBotaoCadastroWidget(),
                  ],
                ),
                LoginAnimacao(animationController: _controller.view)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
