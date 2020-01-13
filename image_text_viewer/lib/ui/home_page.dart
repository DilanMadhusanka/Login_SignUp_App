import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploading extends StatefulWidget {
  @override
  _ImageUploadingState createState() => _ImageUploadingState();
}

class _ImageUploadingState extends State<ImageUploading> {

  File file;

  void _choose() async {
    file = await ImagePicker.pickImage(source: ImageSource.gallery);
    print(file);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Image'),
        centerTitle: true,
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: _choose,
              child: Text('Choose Image'),
            )
          ],
        ),
      ),
    );
  }
}