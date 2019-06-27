import 'package:flutter/material.dart';

class LoginAnimacao extends StatelessWidget {
  final AnimationController animationController;
  LoginAnimacao({this.animationController})
      : animacaoDiminuirBotao = Tween(
          begin: 320.0,
          end: 60.0,
        ).animate(
          CurvedAnimation(
            parent: animationController,
            curve: Interval(0, 0.150),
          ),
        ),
        animacaoAumentarBotao = Tween(
          begin: 60.0,
          end: 1000.0,
        ).animate(
          CurvedAnimation(
            parent: animationController,
            curve: Interval(0.5, 1, curve: Curves.bounceOut),
          ),
        );

  final Animation<double> animacaoDiminuirBotao;
  final Animation<double> animacaoAumentarBotao;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: InkWell(
        onTap: () {
          animationController.forward();
        },
        child: animacaoAumentarBotao.value == 60
            ? Container(
                width: animacaoDiminuirBotao.value,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 64, 106, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: _constroiBotao(context),
              )
            : Container(
                width: animacaoAumentarBotao.value,
                height: animacaoAumentarBotao.value,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 64, 106, 1.0),
                  shape: animacaoAumentarBotao.value < 500 ? BoxShape.circle : BoxShape.rectangle,
                ),
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: animationController,
    );
  }

  Widget _constroiBotao(BuildContext context) {
    if (animacaoDiminuirBotao.value > 75) {
      return Text(
        "Login",
        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300, letterSpacing: 0.3),
      );
    } else {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 1,
      );
    }
  }
}
