import 'package:cross_platform/Tuhoc/TestResponsive/Person.dart';
import 'package:flutter/material.dart';

import 'CardLayout.dart';

class MyDesktop extends StatefulWidget {
  const MyDesktop({super.key});

  @override
  State<MyDesktop> createState() => _MyDesktopState();
}

class _MyDesktopState extends State<MyDesktop> {

  List<Person> list = [
    Person(
        fullname: "Bảo Nguyên",
        age: 20,
        image: "https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-1/427972192_1167291137592251_257638228340787310_n.jpg?stp=c0.72.1536.1536a_dst-jpg_s160x160&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeG67LmSQvL04miLD6DLgYdAgSH8yXTp6JuBIfzJdOnom957ghk8tXeACUS3AZwkUdlJCzOUeslL6rAQhrzD7hKG&_nc_ohc=XwngF4Cxgb0Q7kNvgGJvMsx&_nc_zt=24&_nc_ht=scontent.fsgn2-3.fna&_nc_gid=AN0y4Iqg0fLR2aw-B5u5EE_&oh=00_AYCGU5xfyXcfuVwe8Q_SUTX_qdT6-oEuqO46AEsxnm0GLA&oe=6754A3F9",
        dob: "13-02-2004",
        pob: "Bà Rịa - Vũng Tàu"
    ),
    Person(
        fullname: "Kim Dung",
        age: 18,
        image: "https://scontent.xx.fbcdn.net/v/t1.15752-9/462556622_1079950143344376_5847829127704260275_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=0024fc&_nc_eui2=AeFRI2NhBlNVXHuRvB2BavD7PZWbXIQ8S0A9lZtchDxLQNk7LyvwBe59zsCK0_wrHwBRa7g7gtZbY1A9nQR7iPKr&_nc_ohc=IDeyCLr_EFoQ7kNvgEERLrn&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1QGTmzdk0JHr8x2CzH6biYUH8_ID2irJ-l-VUok6QMg1yw&oe=67765E59",
        dob: "29-12-2005",
        pob: "Đà Nẵng",
    ),
    Person(
        fullname: "Bảo Nguyên",
        age: 20,
        image: "https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-1/427972192_1167291137592251_257638228340787310_n.jpg?stp=c0.72.1536.1536a_dst-jpg_s160x160&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeG67LmSQvL04miLD6DLgYdAgSH8yXTp6JuBIfzJdOnom957ghk8tXeACUS3AZwkUdlJCzOUeslL6rAQhrzD7hKG&_nc_ohc=XwngF4Cxgb0Q7kNvgGJvMsx&_nc_zt=24&_nc_ht=scontent.fsgn2-3.fna&_nc_gid=AN0y4Iqg0fLR2aw-B5u5EE_&oh=00_AYCGU5xfyXcfuVwe8Q_SUTX_qdT6-oEuqO46AEsxnm0GLA&oe=6754A3F9",
        dob: "13-02-2004",
        pob: "Bà Rịa - Vũng Tàu"
    ),
    Person(
        fullname: "Bảo Nguyên",
        age: 20,
        image: "https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-1/427972192_1167291137592251_257638228340787310_n.jpg?stp=c0.72.1536.1536a_dst-jpg_s160x160&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeG67LmSQvL04miLD6DLgYdAgSH8yXTp6JuBIfzJdOnom957ghk8tXeACUS3AZwkUdlJCzOUeslL6rAQhrzD7hKG&_nc_ohc=XwngF4Cxgb0Q7kNvgGJvMsx&_nc_zt=24&_nc_ht=scontent.fsgn2-3.fna&_nc_gid=AN0y4Iqg0fLR2aw-B5u5EE_&oh=00_AYCGU5xfyXcfuVwe8Q_SUTX_qdT6-oEuqO46AEsxnm0GLA&oe=6754A3F9",
        dob: "13-02-2004",
        pob: "Bà Rịa - Vũng Tàu"
    )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4 > 400 ? 400 : MediaQuery.of(context).size.width * 0.4 ,
            child: Container(

              padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
              child: Container(
                color: Colors.cyan[400],
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Container(
                        height: 400,
                        width: double.infinity,
                        color: Colors.cyan[600],
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: list.map((person) => CardlayoutCustome(
                                  person: person,
                                  onclick: () {
                                    setState(() {
                                      list.remove(person) ;
                                    });
                                  }
                              )).toList()
                          ),
                        )
                      ),
                    ),
                    Container(
                      height: 300 ,
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Container(
                        color: Colors.cyan[400],
                      ),
                    ),
                    Container(
                      height: 300 ,
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      child: Container(
                        color: Colors.cyan[400],
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
