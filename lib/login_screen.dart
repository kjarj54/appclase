import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Iniciar sesion',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Correo electronico',
                    prefix: Icon(Icons.email, color: Colors.blue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    prefix: Icon(Icons.lock, color: Colors.blue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  obscureText: true,
                  controller: passwordController,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: 'Iniciando sesion...',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 5,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Iniciar sesion',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Olvidaste tu contraseña?',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
