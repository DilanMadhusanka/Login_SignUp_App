import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent.shade700,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: ListView(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(top: 60.0),),
            Center(
              child: Image.asset('images/group.png',
                width: 80.0,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0, right: 20.0, bottom: 20, left: 20.0),
              height: 300.0,
              color: Colors.white30,
              child: Form(
                key: _formKey,
                child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _emailController,
                    style: style,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    ),
                    validator: (value) {
                      if(value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    style: style,
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your password',
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    ),
                    validator: (value) {
                      if(value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20.0),),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: RaisedButton(
                      color: Colors.grey,
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          print(_emailController.text);
                          print(_passwordController.text);
                        }
                      },
                      child: Text('Login',
                        textAlign: TextAlign.center,
                        style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold,),
                      ),
                    ),
                  )
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}