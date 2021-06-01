import 'package:flutter/material.dart';

class DeletaTransacao extends StatelessWidget{
  final TextEditingController id = TextEditingController();
  final Function removerTarefa;

  DeletaTransacao(this.removerTarefa);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(decoration: InputDecoration(labelText: 'Digite o ID'), controller: id),

                  TextButton(child: Container(
                    width: double.infinity,
                    child: Center(child: Text('Remover')),
                  ),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.red,
                        onSurface: Colors.grey,
                        elevation: 5
                    ),
                    onPressed: () => {removerTarefa(this.id.text)}, )//=========================
                ]
            )
        )
    );
  }

}