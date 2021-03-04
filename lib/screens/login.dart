import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset('assets/images/login.png'),
          Text(
            'Welcome to Login Page',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter username', labelText: 'Username'),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter Password', labelText: 'Password'),
                ),
                SizedBox(
                  height: 12.0,
                ),
              ],
            ),
          ),
          ElevatedButton(
            child: Text('Signin'),
            onPressed: () {
              print('agya');
            },
          )
        ],
      ),
    );
  }
}
