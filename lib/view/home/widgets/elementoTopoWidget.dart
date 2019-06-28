import 'categoriasWidget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class ElementoTopoWidget extends StatelessWidget {
  final Animation<double> animacaoCrescerContainer;

  ElementoTopoWidget({@required this.animacaoCrescerContainer});

  @override
  Widget build(BuildContext context) {
    final viewSize = MediaQuery.of(context).size;

    return Container(
      height: viewSize.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("imagens/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Bem vindo, Rapha!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              width: animacaoCrescerContainer.value * 120,
              height: animacaoCrescerContainer.value * 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("imagens/perfil.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: animacaoCrescerContainer.value * 35,
                height: animacaoCrescerContainer.value * 35,
                margin: EdgeInsets.only(left: 80),
                alignment: Alignment.center,
                child: Text(
                  "2",
                  style: TextStyle(fontSize: animacaoCrescerContainer.value * 15, fontWeight: FontWeight.w400, color: Colors.white),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(80, 210, 194, 1.0),
                ),
              ),
            ),
            CategoriasWidget(),
          ],
        ),
      ),
    );
  }
}
