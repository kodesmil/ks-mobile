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

  Future<PickedFile> getImage() async {
    return await picker.getImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<StorageStore>(context);
    return GestureDetector(
      onTap: () async {
        final picked = await getImage();
        final url = await store.upload(File(picked.path));
        widget.onFileUploaded(url);
      },
      child: widget.child,
    );
  }
}
