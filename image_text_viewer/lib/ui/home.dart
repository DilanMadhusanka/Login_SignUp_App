import 'package:flutter/material.dart';
import 'package:image_text_viewer/ui/user_input_section.dart';

class Home extends StatelessWidget {
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
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(top: 60.0),),
            Center(
              child: Image.asset('images/group.png',
                width: 80.0,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              //child: UserInputSection(),
            )
          ],
        ),
      ),
    );
  }
}