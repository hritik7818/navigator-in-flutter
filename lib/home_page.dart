import 'package:flutter/material.dart';
import './login_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text(
                  "GO TO LOGIN PAGE",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => LoginPage()));
                  Navigator.of(context).pushNamed("/login");
                },
                color: Color.fromARGB(255, 3, 99, 26),
              ),
            ],
          ),
        ));
  }
}
