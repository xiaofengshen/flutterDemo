import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

class ImagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ImagePageState();
  }
}

class ImagePageState extends State<ImagePage> {
  var iamgeFile;
  ImagePicker mImagePicker = ImagePicker();

  Future<void> _getImage() async {
    var pickedFile = await mImagePicker.getImage(
        source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        iamgeFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                _getImage();
              },
              child: Text("选择图片")),
          Expanded(child:    Container(
            child: iamgeFile == null ? Text("没有图片") : Image.file(iamgeFile),
          ) )

        ],
      ),
    );
  }
}
