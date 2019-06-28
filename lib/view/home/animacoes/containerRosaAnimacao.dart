import 'package:flutter/material.dart';

class ContainerRosaAnimacao extends StatelessWidget {
  final Animation<Color> fadeAnimacao;
  ContainerRosaAnimacao({this.fadeAnimacao});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "heroMeuFadeLogin",
      child: Container(
        decoration: BoxDecoration(color: fadeAnimacao.value),
      ),
    );
  }
}
