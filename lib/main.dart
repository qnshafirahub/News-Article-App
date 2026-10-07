import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controller untuk username dan password
  TextEditingController inputUsername = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [

          // Logo dan nama aplikasi
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
              left: 40,
              right: 40,
            ),

            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.language,
                      size: 70,
                      color: Colors.white,
                    ),

                    const SizedBox(width: 20),

                    const Text(
                      'News\nApp',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                Container(
                  height: 2,
                  color: Colors.grey,
                ),
              ],
            ),
          ),

          const SizedBox(height: 35),

          // Kotak login
          Container(
            width: 330,
            padding: const EdgeInsets.all(25),

            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
            ),

            child: Column(
              children: [

                // Username
                TextField(
                  controller: inputUsername,

                  decoration: InputDecoration(
                    hintText: 'username:',
                    filled: true,
                    fillColor: Colors.white,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Password
                TextField(
                  controller: inputPassword,

                  obscureText: true,

                  decoration: InputDecoration(
                    hintText: 'password:',
                    filled: true,
                    fillColor: Colors.white,

                    suffixIcon: const Icon(
                      Icons.lock,
                      color: Colors.blueGrey,
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 45),

          // Tombol Continue
          SizedBox(
            width: 260,
            height: 60,

            child: ElevatedButton(
              onPressed: () {

                print('Username: ${inputUsername.text}');
                print('Password: ${inputPassword.text}');

              },

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey,

                elevation: 2,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),

              child: const Text(
                'Continue',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}