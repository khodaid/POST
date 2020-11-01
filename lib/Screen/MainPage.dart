import 'package:flutter/material.dart';
import 'LoginPage.dart';

class MainPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                  child: Center(
                child: ImageLogo(),
              )),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Center(
                  child: ButtonContainer(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: SizedBox(
        width: 200,
        height: 40,
        child: OutlineButton(
          child: Text("Login"),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          // onPressed: () => null,
          splashColor: Color.fromRGBO(200, 255, 176, 0.7),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          borderSide: BorderSide(
            color: Colors.green[300],
            style: BorderStyle.solid,
            width: 2,
          ),
        ),
      ),
    );
  }
}

class ButtonContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // color: ,
        child: Column(
          children: [ButtonLogin(), ButtonLogin()],
        ),
      ),
    );
  }
}

class ImageLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        width: 300,
        height: 300,
        image: AssetImage('images/shopping-cart-colour-800px.jpg'),
      ),
    );
  }
}
