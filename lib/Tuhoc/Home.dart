import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "my first app",
          style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        margin: EdgeInsets.fromLTRB(10,20, 10, 20),
        color: Colors.blue,
        child: TextButton.icon(
          onPressed: () {
            print("s");
          },
          style: ButtonStyle(
              backgroundColor: const WidgetStatePropertyAll(Color.fromARGB(255, 255, 0, 0)),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                      color: Colors.black ,
                      width: 2.0
                  )
              ))
          ),
          icon: Icon(Icons.add_a_photo),
          label: const Text(
            "click me",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 100),
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        hoverColor: Colors.blue,
        shape: const Border(
            top: BorderSide(
                color: Colors.red,
                width: 2
            )
        ),
        child: const Text(
          "click",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
