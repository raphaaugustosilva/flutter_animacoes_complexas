import 'package:flutter/material.dart';
import 'package:flutter_animacoes_complexas/view/home/widgets/elementoTopoWidget.dart';

class HomeAnimacao extends StatelessWidget {
  final AnimationController controller;
  HomeAnimacao({@required this.controller})
      : animacaoCrescerContainer = CurvedAnimation(
          parent: controller,
          curve: Curves.ease,
        );

  final Animation<double> animacaoCrescerContainer;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        ElementoTopoWidget(
          animacaoCrescerContainer: animacaoCrescerContainer,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }
}
