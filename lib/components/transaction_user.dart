import 'package:flutter/cupertino.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../model/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
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
    return Column(
      children: [ 
        TransactionList(_transaction),
        TransactionForm()
      ],
    );
  }
}
