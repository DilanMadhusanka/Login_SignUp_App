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
  return null;
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
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(top: 50.0),),
            Center(
              child: Container(
                child: showImage()
              )
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: cameraImage,
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Gradient Button',
                  style: TextStyle(fontSize: 20)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}