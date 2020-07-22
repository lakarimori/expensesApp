import './transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: '0', cost: 20.05, date: DateTime.now(), title: 'Something useless'),
    Transaction(
        id: '0', cost: 10.00, date: DateTime.now(), title: 'Something usefull'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: [
          Card(
            child: Container(
              width: double.infinity,
              child: Text('data'),
              color: Colors.amber,
            ),
            elevation: 10,
          ),
          Card(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'title'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'amount'),
                  ),
                  FlatButton(
                    onPressed: () => {},
                    child: Text('data'),
                    color: Colors.blue,
                    textColor: Colors.white,
                  )
                ],
              ),
              padding: EdgeInsets.all(10),
            ),
            elevation: 10,
          ),
          Column(
            children: transactions
                .map(
                  (transaction) => Card(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                              width: 2,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 15,
                          ),
                          child: Text(
                            '\$${transaction.cost}',
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction.title,
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              DateFormat('yyyy/MM/dd - HH:mm')
                                  .format(transaction.date),
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
