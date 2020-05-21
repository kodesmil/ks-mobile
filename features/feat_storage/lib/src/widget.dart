import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'store.dart';

class StorageWidget extends StatefulWidget {
  final Widget child;

  const StorageWidget({Key key, this.child}) : super(key: key);

  @override
  _StorageWidgetState createState() => _StorageWidgetState();
}

class _StorageWidgetState extends State<StorageWidget> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<StorageStore>(context);
    super.didChangeDependencies();
  }

  File _image;

  Future getImage() async {
    final store = Provider.of<StorageStore>(context);
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
      store.upload(image);
    });
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<StorageStore>(context);
    return CupertinoPageScaffold(
      child: Center(
        child: _image == null
            ? RaisedButton(
                onPressed: getImage,
                child: Icon(Icons.add_a_photo),
              )
            : Image.file(_image),
      ),
    );
  }
}
