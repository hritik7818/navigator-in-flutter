import 'package:flutter/material.dart';
import './product_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          automaticallyImplyLeading: false,
        ),
        body: WillPopScope(
          onWillPop: () async {
            bool res = await showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("Confirm"),
                content: Text(
                  "Would you like to go back",
                ),
                actions: [
                  RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      "No",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      "Yes",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                  )
                ],
              ),
            );
            return Future.value(res);
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text(
                    "GO TO PRODUCT PAGE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(builder: (context) => ProductPage()),
                    // );
                    Navigator.of(context).pushReplacementNamed("/product");
                  },
                  color: Color.fromARGB(255, 3, 99, 26),
                ),
                RaisedButton(
                  child: Text(
                    "BACK TO lOGIN PAGE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Color.fromARGB(255, 1, 52, 94),
                )
              ],
            ),
          ),
        ));
  }
}
