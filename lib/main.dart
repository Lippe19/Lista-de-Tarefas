import 'package:flutter/material.dart';
import 'widgets/novaTransacao.dart';
import 'widgets/deletaTransacao.dart';
import 'widgets/listaTransacoes.dart';
import 'models/transacao.dart';

import 'dart:math';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicativo",
      home: MyApp(),
    )
);

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void iniciarFormulario(BuildContext contx){
    showModalBottomSheet(context: contx, builder: (modalCtx) {
      return NovaTransacao(adicionarProduto);
    });
  }
  void iniciarFormulario2(BuildContext contx){
    showModalBottomSheet(context: contx, builder: (modalCtx) {
      return DeletaTransacao(removerProduto);
    });
  }

  List<Transacao> transacao = [
    Transacao(id: 3, titulo: 'Compras', descricao: "Arroz, feijão e ovo", data: DateTime.now()),
    Transacao(id: 2, titulo: 'Faculdade', descricao: "Estudar para prova", data: DateTime.now()),
    Transacao(id: 1, titulo: 'Casa', descricao: "Limpar o quarto", data: DateTime.now())
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

  void removerProduto(String pId){
    int idInt=0;
    idInt = int.parse(pId);
    setState(() {
      //transacao.add(registro);
      transacao.removeWhere((item) => item.id == idInt);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Template"),
        actions: [
          IconButton(icon: Icon(Icons.auto_delete_rounded), onPressed: () => {iniciarFormulario2(context)})//,_gerarNumero()
        ],),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
                child: Container(
                    padding: EdgeInsets.all(15),
                    child: Text('Adicione suas tarefas!',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
            ListaTransacoes(transacao)

            //,GerarId()

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {iniciarFormulario(context)},
      ),
    );
  }
}