
import 'package:cross_platform/Tuhoc/TestResponsive/Person.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



Widget CardLayout({required Person person , required VoidCallback onclick}){
  return CardlayoutCustome(person: person, onclick: onclick) ;
}

class CardlayoutCustome extends StatefulWidget {

  final Person person ;
  final VoidCallback onclick ;

  const CardlayoutCustome({required this.person , required this.onclick});

  @override
  State<CardlayoutCustome> createState() => _CardlayoutCustomeState();
}

class _CardlayoutCustomeState extends State<CardlayoutCustome> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.cyan[400],
      margin: const EdgeInsets.all(20),
      child: Container(
        width: 300,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(widget.person.image),
                radius: 50,
              ),
              const SizedBox(height: 10),
              Text(
                widget.person.fullname,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.person.age.toString(),
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.person.dob,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.person.pob,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4
                ),
              ),
              const SizedBox(height: 30),
              TextButton.icon(
                  onPressed: widget.onclick,
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStatePropertyAll(ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    padding: WidgetStatePropertyAll(EdgeInsets.all(15))
                  ),
                  icon: const Icon(Icons.delete,color: Colors.black),
                  label: const Text(
                    "Delete card",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
