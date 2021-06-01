import 'package:flutter/material.dart';

class Transacao {
  final int id;
  final String titulo;
  final String descricao;
  final DateTime data;

  Transacao({
    @required this.id,
    @required this.titulo,
    @required this.descricao,
    @required this.data,
  });
}
