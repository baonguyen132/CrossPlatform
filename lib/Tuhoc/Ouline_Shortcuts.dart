import 'package:flutter/material.dart';

class Ouline_Shortcuts extends StatelessWidget {
  const Ouline_Shortcuts({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "the third app",
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
        TextButton.icon(
            onPressed: (){
              print("sss");
            },
            icon: const Icon(Icons.add_a_photo , color: Colors.white),
            label: const Text(
              "Add photo",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          style: const ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
            backgroundColor: WidgetStatePropertyAll(Colors.red),
            shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                )
            )
            )
        ),
        TextButton.icon(
          onPressed: (){},
          icon: const Icon(Icons.photo_album, color: Colors.white,),
          label: const Text(
            "Open photo",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20

            ),
          ),
          style: const ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
            backgroundColor: WidgetStatePropertyAll(Colors.cyan),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
              )
            )
          ),
        ),
        const Image(image: NetworkImage("https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-6/427972192_1167291137592251_257638228340787310_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeG67LmSQvL04miLD6DLgYdAgSH8yXTp6JuBIfzJdOnom957ghk8tXeACUS3AZwkUdlJCzOUeslL6rAQhrzD7hKG&_nc_ohc=jOFjf9UhTBQQ7kNvgEqfSuG&_nc_zt=23&_nc_ht=scontent.fsgn2-3.fna&_nc_gid=AbFBeXLqJNapysxfRSkUcSc&oh=00_AYCNGQeqWOcw39GtXWwAoqDNa1mCrw70G2AxB29oJsZU3A&oe=674CFD7F") , width: 200,)
      ],
    );
  }
}