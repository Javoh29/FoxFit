import 'package:flutter/material.dart';

class ItemModel {
  ItemModel({
    required this.typeCrypto,
    required this.value,
    required this.valueInDollor,
    required this.date,
  });
  String typeCrypto;
  double value;
  double valueInDollor;
  DateTime date;
}
Map<int, String> weekDays={
  1:'Monday',
  2:'Tuesday',
  3:'Wednesday',
  4:'Thursday',
  5:'Friday',
  6:'Saturday',
  7:'Sunday',
};

DateTime dateNow = DateTime.now();

List<ItemModel> listItems = [
  ItemModel(
      typeCrypto: 'DOT',
      value: -10.00,
      valueInDollor: -189.8,
      date: dateNow),
  ItemModel(
      typeCrypto: 'DOT',
      value: -10.00,
      valueInDollor: -189.8,
      date: dateNow),
  ItemModel(
      typeCrypto: 'BTC',
      value: 1.00,
      valueInDollor: 44978.8,
      date: dateNow),
  ItemModel(
      typeCrypto: 'DOT',
      value: -10.00,
      valueInDollor: -189.8,
      date: dateNow),
  ItemModel(
      typeCrypto: 'DOT',
      value: -10.00,
      valueInDollor: -189.8,
      date: dateNow.add(const Duration(days: -1))),
  ItemModel(
      typeCrypto: 'DOT',
      value: -10.00,
      valueInDollor: -189.8,
      date: dateNow.add(const Duration(days: -1))),
  ItemModel(
      typeCrypto: 'DOT',
      value: -10.00,
      valueInDollor: -189.8,
      date: dateNow.add(const Duration(days: -1))),
  ItemModel(
      typeCrypto: 'DOT',
      value: -10.00,
      valueInDollor: -189.8,
      date: dateNow.add(const Duration(days: -2))),
  ItemModel(
      typeCrypto: 'DOT',
      value: -10.00,
      valueInDollor: -189.8,
      date: dateNow.add(const Duration(days: -2))),
  ItemModel(
      typeCrypto: 'DOT',
      value: -10.00,
      valueInDollor: -189.8,
      date: dateNow.add(const Duration(days: -3))),
  ItemModel(
      typeCrypto: 'DOT',
      value: -10.00,
      valueInDollor: -189.8,
      date: dateNow.add(const Duration(days: -3))),
  ItemModel(
      typeCrypto: 'DOT',
      value: -10.00,
      valueInDollor: -189.8,
      date: dateNow.add(const Duration(days: -3))),
];
