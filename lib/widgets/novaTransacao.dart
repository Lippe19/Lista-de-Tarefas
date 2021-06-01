import 'package:flutter/material.dart';

class NovaTransacao extends StatelessWidget{
  final TextEditingController titulo = TextEditingController();
  final TextEditingController descricao = TextEditingController();
  final Function adicionarTarefa;

  NovaTransacao(this.adicionarTarefa);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(decoration: InputDecoration(labelText: 'Título'), controller: titulo),
                  TextField(decoration: InputDecoration(labelText: 'Descrição'), controller: descricao),
                  TextButton(child: Container(
                    width: double.infinity,
                    child: Center(child: Text('Salvar')),
                  ),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.teal,
                        onSurface: Colors.grey,
                        elevation: 5
                    ),
                    onPressed: () => {adicionarTarefa(this.titulo.text, this.descricao.text)}, )
                ]
            )
        )
    );
  }

}