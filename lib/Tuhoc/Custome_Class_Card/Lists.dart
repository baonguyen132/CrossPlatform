
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'CardCustome.dart';
import 'Person.dart';

class Lists extends StatefulWidget {
  const Lists({super.key});

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {

  List<Person> list = [
    Person(name: "Bảo Nguyên", age: "20", dob: "13-02-2004", national: "VN"),
    Person(name: "Nguyễn Văn A", age: "18", dob: "29-12-2005", national: "VN")
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: const Text(
          "List data",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: list.map((item) => cardPerson(
            item: item,
            onclicks: () {
              setState(() {
                list.remove(item) ;
              });
            }
        )).toList()
      ),
    );
  }
}



