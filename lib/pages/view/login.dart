import 'package:flutter/material.dart';
import './daftar.dart';
import './home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: true, // Ini yang perlu ditambahkan
        child: Column(
          children: [
            Container(
              color: Colors.red,
              padding: EdgeInsets.only(
                right: 70,
                left: 70,
                top: 70,
              ),
              child: Image.asset("assets/img/login.png"),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Masuk',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0x0ff01949A),
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    hintText: 'Username',
                    icon: Icons.person,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    hintText: 'Password',
                    icon: Icons.lock,
                    isPassword: true,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 334,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0x0ff01949A), // background
                  foregroundColor: Colors.white, // foreground
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text("Masuk"),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => daftarPage()),
                );
              },
              child: Text("Daftar disini !"),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool isPassword;

  CustomTextField({
    required this.hintText,
    required this.icon,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      style: TextStyle(fontSize: 18),
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
