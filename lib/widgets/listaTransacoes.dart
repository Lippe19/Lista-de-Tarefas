import 'package:flutter/material.dart';
import '../models/transacao.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class ListaTransacoes extends StatelessWidget {

  //final Function removerTarefa;
  List<Transacao> transacao;
  ListaTransacoes(this.transacao);/*, this.removerTarefa*/

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    Intl.defaultLocale = 'pt-BR';
    return Column(
      children: transacao.map((trans) {
        return Card(
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text("Item "+trans.id.toString(),
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal))),/**/
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(trans.titulo,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text(trans.descricao,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey))
                  ],
                )





              ],
            ));
      }).toList(),
    );
  }
}


