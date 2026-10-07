import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News Article App")),
      backgroundColor: Color.fromARGB(218, 244, 235, 183),
      body:Column(
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              color: Color.fromARGB(218, 244, 235, 183),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Username',
                  border: OutlineInputBorder(),
                ),
                controller: inputNama,
                onSubmitted: (values) {
                  inputNama.text = values;
                },

              ),


            ),
          ),
        
          ElevatedButton(
            child: Text('Tampilkan Username'),
            onPressed: () {
              print(inputNama.text);

            }
          )
        ] 
      )
    );
  
  }
}