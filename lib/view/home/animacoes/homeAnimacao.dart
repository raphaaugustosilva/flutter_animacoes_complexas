import 'package:flutter/material.dart';
import 'package:flutter_animacoes_complexas/view/home/animacoes/containerRosaAnimacao.dart';
import 'package:flutter_animacoes_complexas/view/home/widgets/elementoTopoWidget.dart';
import 'package:flutter_animacoes_complexas/view/home/widgets/homeListViewWidget.dart';

class HomeAnimacao extends StatelessWidget {
  final AnimationController animationController;
  HomeAnimacao({@required this.animationController})
      : animacaoCrescerContainer = CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        animacaoListViewPosicao = EdgeInsetsTween(
          begin: EdgeInsets.only(bottom: 0),
          end: EdgeInsets.only(bottom: 80),
        ).animate(CurvedAnimation(
          parent: animationController,
          curve: Interval(
            0.325,
            0.8,
            curve: Curves.ease,
          ),
        )),
        animacaoFadeLogin = ColorTween(
          begin: Color.fromRGBO(247, 64, 106, 1),
          end: Color.fromRGBO(247, 64, 106, 0),
        ).animate(
          CurvedAnimation(
            parent: animationController,
            curve: Curves.decelerate,
          ),
        );

  final Animation<double> animacaoCrescerContainer;
  final Animation<EdgeInsets> animacaoListViewPosicao;
  final Animation<Color> animacaoFadeLogin;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Stack(
      children: <Widget>[
        ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ElementoTopoWidget(
              animacaoCrescerContainer: animacaoCrescerContainer,
            ),
            HomeListViewWidget(animacaoPosicaoConteudoListView: animacaoListViewPosicao),
          ],
        ),
        IgnorePointer(
          child: ContainerRosaAnimacao(fadeAnimacao: animacaoFadeLogin),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: animationController,
          builder: _buildAnimation,
        ),
      ),
    );
  }
}
