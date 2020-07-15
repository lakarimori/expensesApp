import 'package:flutter/foundation.dart';

class Transaction {
  String id;
  String title;
  double cost;
  DateTime date;

  Transaction(
      {@required this.id,
      @required this.cost,
      @required this.date,
      @required this.title});
}
