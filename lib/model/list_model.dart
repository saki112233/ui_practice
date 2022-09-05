import 'package:flutter/material.dart';

class ListModel {
  String buyer;
  String firstPart;
  String personNumber;
  String secondPart;
  String belowPart;
  String button;
  ListModel(
      {required this.buyer,
      required this.firstPart,
      required this.personNumber,
      required this.secondPart,
      required this.belowPart,
      required this.button});

  static List<ListModel> newList = [
    ListModel(
        buyer: "Buyer A",
        firstPart: "Add for",
        personNumber: "1",
        secondPart: "Person",
        belowPart: "Beautiful View..!",
        button: "Confirm"),
    ListModel(
        buyer: "Buyer B",
        firstPart: "Add for",
        personNumber: "2",
        secondPart: "Person",
        belowPart: "New Date",
        button: "Confirm"),
    ListModel(
        buyer: "Buyer C",
        firstPart: "Add for",
        personNumber: "3",
        secondPart: "Person",
        belowPart: "Today Time",
        button: "Confirm"),
    ListModel(
        buyer: "Buyer D",
        firstPart: "Add for",
        personNumber: "4",
        secondPart: "Person",
        belowPart: "Tomorrow Time",
        button: "Confirm"),
    ListModel(
        buyer: "Buyer E",
        firstPart: "Add for",
        personNumber: "5",
        secondPart: "Person",
        belowPart: "YesterDay Time",
        button: "Confirm"),
  ];
}
