import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[800],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.cyan[600],
        title: const Text(
        "Bảo Nguyên",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: 4,
          color: Colors.white,
        ),
        ),
      ),
      body: Container_Information(),
    );
  }
}

class Container_Information extends StatefulWidget {
  const Container_Information({super.key});

  @override
  State<Container_Information> createState() => _Container_InformationState();
}

class _Container_InformationState extends State<Container_Information> {
  int age = 0 ;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-6/427972192_1167291137592251_257638228340787310_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeG67LmSQvL04miLD6DLgYdAgSH8yXTp6JuBIfzJdOnom957ghk8tXeACUS3AZwkUdlJCzOUeslL6rAQhrzD7hKG&_nc_ohc=jOFjf9UhTBQQ7kNvgHuZRsM&_nc_zt=23&_nc_ht=scontent.fsgn2-3.fna&_nc_gid=AH_9b2Ps7uIdb-Dfymi9Pht&oh=00_AYBG7b5XL2DHuvbeaJLs0OXpB-QVQzlXgX0nIgh9NLyQmg&oe=674DA63F"),
              radius: 100,
            ),
          ),
          const Divider(height: 90),
          const Row(
            children: [
              Padding(
                  padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0,10,0,10),
                child: Text(
                  "Họ Và Tên: ",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5,10,0,10),
                child: Text(
                  "Hồ Bảo Nguyên",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(10,10,0,10),
                child: Text(
                  "Tuổi: ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5,10,0,10),
                child: Text(
                  '$age',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0,10,0,10),
                child: Text(
                  "Email: ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5,10,0,10),
                child: Text(
                  "nguyenhb.22it@vku.udn.vn",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          TextButton.icon(
              onPressed: (){
                setState(() {
                  age++ ;
                });
              },
              style: const ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
                backgroundColor: WidgetStatePropertyAll(Colors.white),
                shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                )
              ),
              icon: const Icon(
                Icons.ads_click,
                color: Colors.cyan,
                size: 22,
              ),
              label: const Text(
                "Click me!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20
                ),
              ),
          )
        ],
      ),
    );

  }
}