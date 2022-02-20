import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String text="Hello Everyone";
  bool ispressed=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kelompok 2"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text, 
              style: TextStyle(fontSize: 20),
            ),
            
            ElevatedButton(
              child: Text("Ubah Text"),
              onPressed: () {
                setState(() {
                  if (!ispressed) {
                    text="Kelompok 2";
                  } else {
                    text="Hello Everyone";
                  }
                  ispressed=!ispressed;
                });
              },
            )
          ],
        )
      ),
    );
  }
}