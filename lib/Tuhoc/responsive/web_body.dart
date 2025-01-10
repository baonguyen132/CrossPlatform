import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WebBody extends StatefulWidget {
  const WebBody({super.key});

  @override
  State<WebBody> createState() => _WebBodyState();
}

class _WebBodyState extends State<WebBody> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green[600] ,
        centerTitle: true,
        title: const Text(
          "Website",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 3
          ),
        ),
      ),
      backgroundColor: Colors.green[200],
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(

            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 300,
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Container(
                      color: Colors.green[600],
                    ),
                  ),

                  Container(
                    height: 300,
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Container(
                      color: Colors.green[400],
                    ),
                  ),
                  Container(
                    height: 300,
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                    child: Container(
                      color: Colors.green[400],
                    ),
                  ),
                ],
              ),
            )
          ),
          SizedBox(
            width: 300,
            height: MediaQuery.of(context).size.height,
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
              child: Container(
                color: Colors.green[400],
              ),
            )
          )
        ],
      ),
    );
  }
}

