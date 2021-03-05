// import 'package:catalog_app/routes/routes.dart';
import 'package:catalog_app/routes/routes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String user = "";
  bool newbutton = false;
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
              'Welcome $user',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      user = value;
                      setState(() {});
                    },
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
            // ElevatedButton(
            //   child: Text(
            //     'Log In',
            //     style: TextStyle(fontSize: 20),
            //   ),
            //   style: TextButton.styleFrom(
            //       minimumSize: Size(130, 35),
            //       backgroundColor: Colors.redAccent[400]),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoute.routehomepage);
            //   },
            // ),
            InkWell(
              onTap: () async {
                setState(() {
                  newbutton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoute.routehomepage);
                setState(() {
                  newbutton = false;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                alignment: Alignment.center,
                height: 30,
                width: newbutton ? 50 : 120,
                decoration: BoxDecoration(
                    color: Colors.redAccent[400],
                    borderRadius: BorderRadius.circular(newbutton ? 60 : 10)),
                child: newbutton
                    ? Icon(
                        Icons.done_sharp,
                        color: Colors.white,
                      )
                    : Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
