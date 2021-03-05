import 'package:catalog_app/routes/routes.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/login.png',
              fit: BoxFit.cover,
            ),
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
              child: Text(
                'Signin',
                style: TextStyle(fontSize: 20),
              ),
              style: TextButton.styleFrom(minimumSize: Size(130, 35)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoute.routehomepage);
              },
            )
          ],
        ),
      ),
    );
  }
}
