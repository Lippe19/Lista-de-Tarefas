import 'package:aula8/widgets/novaTransacao.dart';
import 'package:flutter/material.dart';
import 'listaTransacoes.dart';
import '../models/transacao.dart';

import 'dart:math';

class TransacoesUsuario extends StatefulWidget {
  @override
  _TransacoesUsuarioState createState() => _TransacoesUsuarioState();
}

class _TransacoesUsuarioState extends State<TransacoesUsuario> {
  List<Transacao> transacao = [
    Transacao(id: 1, titulo: 'Compras', descricao: "Arroz, feijão e ovo", data: DateTime.now()),
    Transacao(id: 2, titulo: 'Faculdade', descricao: "Estudar para prova", data: DateTime.now()),
    Transacao(id: 3, titulo: 'Casa', descricao: "Limpar o quarto", data: DateTime.now())
  ];

  void adicionarProduto(String pTitulo, String pDescricao){

    int numero = 0;
    Random numeroAleatorio = new Random();
    numero = numeroAleatorio.nextInt(100);

    var registro = Transacao(
        id: numero,//DateTime.now().toString(),
        titulo: pTitulo,
        descricao: pDescricao,
        data: DateTime.now()
    );
    setState(() {
      transacao.add(registro);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NovaTransacao(adicionarProduto),
        ListaTransacoes(transacao)
      ],
    );
  }
}


