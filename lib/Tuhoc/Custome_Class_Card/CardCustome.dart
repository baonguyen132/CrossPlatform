import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Person.dart';

Widget cardPerson({required Person item , required VoidCallback onclicks}) {
  return CardCustome(item: item , onclicks: onclicks);
}

class CardCustome extends StatefulWidget {
  final Person item ;
  final VoidCallback onclicks ;

  CardCustome({super.key, required this.item , required this.onclicks});

  @override
  State<CardCustome> createState() => _CardCustomeState();
}

class _CardCustomeState extends State<CardCustome> {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0 , 16.0 , 16.0 , 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "${widget.item.name} - ${widget.item.age} - ${widget.item.national}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              const SizedBox(height: 6),
              Text(
                widget.item.dob,
                style: const TextStyle(
                    color: Colors.black
                ),
              ),
              TextButton.icon(
                onPressed: widget.onclicks ,

                icon: Icon(Icons.delete),
                label: Text("delete_item"),
              )
            ],
          ),
        )
    );
  }
}