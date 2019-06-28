import 'package:flutter/material.dart';

class HomeListViewWidget extends StatelessWidget {
  final Animation<EdgeInsets> animacaoPosicaoConteudoListView;
  HomeListViewWidget({@required this.animacaoPosicaoConteudoListView});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        _elementoLista(
          titulo: "Estudar Flutter",
          subtitulo: "É muito legal",
          imagem: AssetImage("imagens/perfil.jpg"),
          margem: animacaoPosicaoConteudoListView.value * 2,
        ),
        _elementoLista(
          titulo: "Estudar Flutter",
          subtitulo: "É muito legal",
          imagem: AssetImage("imagens/perfil.jpg"),
          margem: animacaoPosicaoConteudoListView.value * 1,
        ),
        _elementoLista(
          titulo: "Estudar Flutter",
          subtitulo: "É muito legal",
          imagem: AssetImage("imagens/perfil.jpg"),
          margem: animacaoPosicaoConteudoListView.value * 0,
        ),
      ],
    );
  }

  Widget _elementoLista({String titulo, String subtitulo, ImageProvider imagem, EdgeInsets margem}) {
    return Container(
      margin: margem,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey[100], width: 1),
          bottom: BorderSide(color: Colors.grey[100], width: 1),
        ),
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              image: DecorationImage(image: imagem),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                titulo,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 5),
              Text(
                subtitulo,
                style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w300),
              ),
            ],
          )
        ],
      ),
    );
  }
}
