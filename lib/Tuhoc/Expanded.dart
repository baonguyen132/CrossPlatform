
import 'package:flutter/material.dart';

class Expandeds extends StatelessWidget {
  const Expandeds({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "the four app",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: const Row_Test(),
    );
  }

}

class Row_Test extends StatelessWidget {
  const Row_Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(10),
            height: 100,
            child: const Text("data 1") ,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(10),
            height: 100,
            child:  Container(
              child: const Text(
                "data 2",
                style: TextStyle(

                ),
              ),
            )
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(10),
            height: 100,
            child: const Text("data 3") ,
          ),
        ),
      ],
    );
  }
}