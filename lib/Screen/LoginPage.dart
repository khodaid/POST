import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: myAppBar(),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                child: Center(
                  child: Images(),
                ),
              ),
            ),
            Expanded(flex: 3, child: null),
          ],
        ),
      ),
    );
  }
}

Widget myAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(30),
    child: AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromRGBO(12, 166, 81, 1)),
          onPressed: () => {},
        ),
      ),
    ),
  );
}

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        width: 300,
        height: 300,
        image: AssetImage('images/storefront-colour-1200px.jpg'),
      ),
    );
  }
}
