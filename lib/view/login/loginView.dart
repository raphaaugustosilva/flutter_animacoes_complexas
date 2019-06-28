import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter_animacoes_complexas/helper/navegacaoHelper.dart';
import 'animacoes/loginAnimacao.dart';
import 'package:flutter_animacoes_complexas/view/login/widgets/loginConteudoWidget.dart';
import 'package:flutter_animacoes_complexas/view/login/widgets/loginBotaoCadastroWidget.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushNamed(NavegacaoHelper.rotaHome);
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
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
                LoginAnimacao(animationController: _animationController.view)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
