import 'package:flutter/material.dart';
import 'package:crypto_wallet/shared/animations/text_animation.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  final TextEditingController _emailField = TextEditingController();
  final TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextAnimation(
                  child: const Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 40.0))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 20.0),
                  child: TextFormField(
                      controller: _emailField,
                      decoration: const InputDecoration(
                        hintText: "Email",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(
                            color: Colors.lime,
                            width: 2.0,
                          ),
                        ),
                      )),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 20.0),
                  child: TextFormField(
                    controller: _passwordField,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(
                          color: Colors.lime,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[400]),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text("Register"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[400]),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text("Log in"),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
