import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import 'store.dart';

class StoragePictureSelectWidget extends StatefulWidget {
  final Widget child;
  final Function(String url) onFileUploaded;

  const StoragePictureSelectWidget({
    Key key,
    this.child,
    this.onFileUploaded,
  }) : super(key: key);

  @override
  _StoragePictureSelectWidgetState createState() =>
      _StoragePictureSelectWidgetState();
}

class _StoragePictureSelectWidgetState
    extends State<StoragePictureSelectWidget> {
  final picker = ImagePicker();

  Future<PickedFile> getImage(ImageSource source) async {
    return await picker.getImage(source: source, imageQuality: 25);
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
                  final url =
                      await store.upload('profile_pictures', File(picked.path));
                  widget.onFileUploaded(url);
                },
              ),
              ListTile(
                leading: Text('Take new picture'),
                onTap: () async {
                  Navigator.pop(context);
                  final picked = await getImage(ImageSource.camera);
                  if (picked == null) return;
                  final url =
                      await store.upload('profile_pictures', File(picked.path));
                  widget.onFileUploaded(url);
                },
              )
            ],
          );
        });
  }
}

class StorageFileSelectWidget extends StatefulWidget {
  final Widget child;
  final Function(String url) onFileUploaded;

  const StorageFileSelectWidget({
    Key key,
    this.child,
    this.onFileUploaded,
  }) : super(key: key);

  @override
  _StorageFileSelectWidgetState createState() =>
      _StorageFileSelectWidgetState();
}

class _StorageFileSelectWidgetState extends State<StorageFileSelectWidget> {
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<StorageStore>(context);
    return GestureDetector(
      onTap: () => selectPicture(context, store),
      child: widget.child,
    );
  }

  Future<void> selectPicture(BuildContext context, StorageStore store) async {
    final file = await FilePicker.getFile(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'png'],
    );
    if (file == null) {
      widget.onFileUploaded('');
      return;
    }
    ;
    final url = await store.upload('service_applications', file);
    widget.onFileUploaded(url);
  }
}
