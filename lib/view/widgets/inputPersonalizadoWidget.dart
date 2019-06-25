import 'package:flutter/material.dart';

class InputPersonalizadoWidget extends StatelessWidget {
  final String hint;
  final bool inputSenha;
  final IconData icone;

  InputPersonalizadoWidget({this.hint, this.inputSenha, this.icone});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white24,
            width: 0.5,
          ),
        ),
      ),
      child: TextFormField(
        obscureText: inputSenha,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          icon: Icon(icone, color: Colors.white),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white, fontSize: 15),
          contentPadding: EdgeInsets.only(top: 30, right: 30, bottom: 30, left: 5),
        ),
      ),
    );
  }
}
