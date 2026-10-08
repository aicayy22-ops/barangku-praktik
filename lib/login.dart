import 'package:flutter/material.dart';

class LoginAdmin extends StatefulWidget {
  const LoginAdmin({super.key});

  @override
  State<LoginAdmin> createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    // A. email atau password kosong
    if (emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("email dan password tidak boleh kosong"),
        ),
      );
    }

    // B. email dan password benar
    else if (emailController.text == "admin" &&
        passwordController.text == "12345") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Login berhasil"),
        ),
      );
    }

    // email atau password salah
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("email atau password salah"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 195, 143),

      body: Center(
        child: Container(
          width: 400,

          padding: const EdgeInsets.only(bottom: 50),

          decoration: BoxDecoration(
            color: const Color.fromARGB(240, 236, 206, 140),
            border: Border.all(
              color: const Color.fromARGB(255, 197, 115, 48),
              width: 10,
            ),
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              // JUDUL
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                color: const Color(0xFFEAF5F5),

                child: const Text(
                  "Masuk Barangku",
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // GAMBAR
              Image.asset(
                'asset/Images/my.png',
                width: 150,
                height: 150,
              ),

              const SizedBox(height: 30),

              // email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),

                child: Row(
                  children: [

                    const Text(
                      "email:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(width: 20),

                    Expanded(
                      child: TextField(
                        controller: emailController,

                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),

                          filled: true,
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // PASSWORD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),

                child: Row(
                  children: [

                    const Text(
                      "Password:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: TextField(
                        controller: passwordController,

                        obscureText: true,

                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 60),

              // TOMBOL LOGIN
              ElevatedButton(
                onPressed: login,

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,

                  padding: const EdgeInsets.symmetric(
                    horizontal: 45,
                    vertical: 18,
                  ),

                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),

                child: const Text(
                  "Masuk",

                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}