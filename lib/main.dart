import 'package:expenses/model/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _transaction = [
    Transaction(
        id: 't1',
        title: 'Novo Tênis Corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta luz', value: 310.76, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Despesas Pessoais')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: const Card(
                color: Colors.blue, elevation: 5, 
                child: Text("Gráfico"),),
          ),
          Column(
            children: <Widget>[
              ..._transaction.map((tr) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10
                        ),
                        decoration: BoxDecoration(border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )),
                        padding: const EdgeInsets.all(10),
                        child: Text(tr.value.toString()),
                      ),
                      Column( children: <Widget>[
                        Text(tr.title),
                        Text(tr.date.toString()),
                      ],)
                    ],
                  ),
                );
              })
            ],
          )
        ],
      ),
    );
  }
}
