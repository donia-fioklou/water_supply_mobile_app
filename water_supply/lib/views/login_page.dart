import 'package:flutter/material.dart';
import 'package:water_supply/views/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String getAccountName() {
    return _emailController.toString();
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //test controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            /* Icon(
              Icons.monetization_on_rounded,
              size: 100,
            ),*/

            SizedBox(
              height: 10,
            ),
            //hello again

            Text(
              'Bienvenue',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),

            SizedBox(
              height: 50,
            ),

            //email field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Email'),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

            //password field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Mot de passe'),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),
            //sign in button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                        child: Text(
                      'S\'identifier',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //not a member? register now
          ]),
        ),
      ),
    );
  }
}
