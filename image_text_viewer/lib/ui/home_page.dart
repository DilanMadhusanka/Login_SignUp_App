import 'package:flutter/material.dart';

class ImageUploading extends StatefulWidget {
  @override
  _ImageUploadingState createState() => _ImageUploadingState();
}

class _ImageUploadingState extends State<ImageUploading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Image'),
        centerTitle: true,
      ),
    );
  }
}