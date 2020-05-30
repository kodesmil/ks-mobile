import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import 'store.dart';

class StorageWidget extends StatefulWidget {
  final Widget child;
  final Function(String url) onFileUploaded;

  const StorageWidget({
    Key key,
    this.child,
    this.onFileUploaded,
  }) : super(key: key);

  @override
  _StorageWidgetState createState() => _StorageWidgetState();
}

class _StorageWidgetState extends State<StorageWidget> {
  final picker = ImagePicker();

  Future<PickedFile> getImage(ImageSource source) async {
    return await picker.getImage(source: source);
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<StorageStore>(context);
    return GestureDetector(
      onTap: () => selectPicture(context, store),
      child: widget.child,
    );
  }

  Future<void> selectPicture(BuildContext context, StorageStore store) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('Select profile picture'),
            titlePadding: EdgeInsets.only(top: 25, left: 15),
            children: <Widget>[
              ListTile(
                leading: Text('From gallery'),
                onTap: () async {
                  Navigator.pop(context);
                  final picked = await getImage(ImageSource.gallery);
                  if (picked == null) return;
                  final url = await store.upload(File(picked.path));
                  widget.onFileUploaded(url);
                },
              ),
              ListTile(
                leading: Text('Take new picture'),
                onTap: () async {
                  Navigator.pop(context);
                  final picked = await getImage(ImageSource.camera);
                  if (picked == null) return;
                  final url = await store.upload(File(picked.path));
                  widget.onFileUploaded(url);
                },
              )
            ],
          );
        });
  }
}
