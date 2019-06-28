import 'package:flutter/material.dart';

class CategoriasWidget extends StatefulWidget {
  @override
  _CategoriasWidgetState createState() => _CategoriasWidgetState();
}

class _CategoriasWidgetState extends State<CategoriasWidget> {
  final List<String> listaCategorias = [
    "Trabalho",
    "Estudos",
    "Casa",
  ];

  int _indiceCategoriaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          disabledColor: Colors.white30,
          onPressed: _indiceCategoriaSelecionada > 0 ? navegarCategoriaTras : null,
        ),
        Text(
          listaCategorias[_indiceCategoriaSelecionada].toUpperCase(),
          style: TextStyle(fontSize: 18, letterSpacing: 1.2, fontWeight: FontWeight.w300, color: Colors.white),
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.white,
          disabledColor: Colors.white30,
          onPressed: _indiceCategoriaSelecionada < listaCategorias.length - 1 ? navegarCategoriaFrente : null,
        ),
      ],
    );
  }

  void navegarCategoriaTras() {
    setState(() {
      _indiceCategoriaSelecionada--;
    });
  }

  void navegarCategoriaFrente() {
    setState(() {
      _indiceCategoriaSelecionada++;
    });
  }
}
