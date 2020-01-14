import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploading extends StatefulWidget {
  @override
  _ImageUploadingState createState() => _ImageUploadingState();
}

class _ImageUploadingState extends State<ImageUploading> {

  File _image;

  Future cameraImage() async {
  var image = await ImagePicker.pickImage(
    source: ImageSource.gallery,
    maxHeight: 240.0,
    maxWidth: 240.0,
  );

  setState(() {
    _image = image;
  });
}

Widget showImage() {
  if(_image != null) {
    return Image.file(_image,);
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Image'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: cameraImage,
              child: Text('Choose Image'),
            ),
            Center(
              child: Container(
                width: 200.0,
                child: showImage()
              )
            )
          ],
        ),
      ),
    );
  }
}