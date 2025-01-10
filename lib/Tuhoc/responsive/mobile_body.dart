import 'package:flutter/material.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purple[600] ,
        centerTitle: true,
        title: const Text(
          "App",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 3
          ),
        ),
      ),
      backgroundColor: Colors.purple[200],
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
                        color: Colors.purple[600],
                      ),
                    ),

                    Container(
                      height: 300,
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Container(
                        color: Colors.purple[400],
                      ),
                    ),
                    Container(
                      height: 300,
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      child: Container(
                        color: Colors.purple[400],
                      ),
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
