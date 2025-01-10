import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMobile extends StatefulWidget {
  const MyMobile({super.key});

  @override
  State<MyMobile> createState() => _MyMobileState();
}

class _MyMobileState extends State<MyMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple[600],
        title: const Text(
          "WEBSITE",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 5,
              fontSize: 30
          ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 300 ,
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Container(
                        color: Colors.purple[600],
                      ),
                    ),
                    Container(
                      height: 300 ,
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Container(
                        color: Colors.purple[400],
                      ),
                    ),
                    Container(
                      height: 300 ,
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      child: Container(
                        color: Colors.purple[400],
                      ),
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
