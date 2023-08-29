import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leasure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.leasure: Icons.movie,
  Category.travel: Icons.flight,
  Category.work: Icons.work,
};

class Expense {
  Expense(
      {required this.title,
      required this.category,
      required this.amount,
      required this.date})
      : ID = uuid.v4();

  final String title;
  final double amount;
  final String ID;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
