import 'package:flutter/material.dart';

import 'nextScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TextEditingController _userNameController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  Map results;
  Widget erMessage;

  Future _goToNextScreen(BuildContext context) async {
    results = await Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (BuildContext context) {
          if(_userNameController.text == 'Flutter' && _passwordController.text == 'dart') {
            return new NextScreen();
          }
            erMessage = error();
            return erMessage;
        }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Login Page'),
        centerTitle: true,
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Padding(padding: const EdgeInsets.only(top: 40.2),),
            new Image.asset(
              'images/smoke.png',
              height: 120.0,
              width: 75.0,
            ),
            new Padding(padding: const EdgeInsets.all(10.0),),
            new Container(
              color: Colors.greenAccent,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(40.0),
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userNameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'User name',
                      labelStyle: new TextStyle(color: Colors.black87),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      )
                    ),
                  ),
                  new TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'password',
                      labelStyle: new TextStyle(color: Colors.black87),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      )
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(top: 30.0),
                    alignment: Alignment.center,
                    child: new RaisedButton(
                      onPressed: () => _goToNextScreen(context),
                      color: Colors.green.shade900,
                      child: new Text('Login',
                        style: new TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  new Container(
                    child: erMessage,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget error() {
    return new ListTile(
      title: new Text("Wrong Password!"),
    );
  }

}