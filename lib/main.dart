import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
        backgroundColor: Color.fromARGB(0, 50, 145, 145),
      ),

      backgroundColor: Color.fromARGB(245, 243, 242, 234),

      body: Column(
        children: [
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 185, 164, 131),
                  hintText: 'Masukan Username',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                ),

                controller: inputNama,

                onFieldSubmitted: (values) {
                  inputNama.text = values;
                },
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
          ),

          Container(
            width: 300,
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 209, 199, 185),
                hintText: 'Masukan Password',
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
              ),

              controller: inputPassword,

              onFieldSubmitted: (values) {
                inputPassword.text = values;
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
          ),

          ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              print(inputNama.text);
              print(inputPassword.text);
            },
          ),
        ],
      ),
    );
  }
}