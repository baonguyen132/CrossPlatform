import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "my second app",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: RowCustome()
   );
  }

}

class ContainerCustome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
      margin: const EdgeInsets.all(20) ,
      color: Colors.lightBlue,
      child: const Center(
        child: Text("sss"),
      ),
    ) ;
  }
}

class RowCustome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(20,10,20,10),
          color: Colors.lightBlue,
          child: const Text(
            "hello, world",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        TextButton(
            onPressed: (){}, 
            style: ButtonStyle(
              backgroundColor: const WidgetStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  style: BorderStyle.solid
                ),
                borderRadius: BorderRadius.circular(5)
              ))
            ),
            child: Text("click me")),
        Text("sss")
      ]
    ) ;
  }

}