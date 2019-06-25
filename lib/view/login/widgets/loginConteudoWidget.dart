import 'package:flutter/material.dart';
import 'package:flutter_animacoes_complexas/view/widgets/inputPersonalizadoWidget.dart';

class LoginConteudoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            InputPersonalizadoWidget(hint: "Usuário", inputSenha: false, icone: Icons.person_outline),
            InputPersonalizadoWidget(hint: "Senha", inputSenha: true, icone: Icons.lock_outline),
          ],
        ),
      ),
    );
  }
}
