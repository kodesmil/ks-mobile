import 'dart:async';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'store.g.dart';

class StorageStore = _StorageStore with _$StorageStore;

abstract class _StorageStore with Store {
  final ErrorStore errorStore;

  _StorageStore(
    this.errorStore,
  );

  @action
  Future<String> upload(String folder, File file) async {
    final storageReference = FirebaseStorage().ref().child(
          '$folder/${Uuid().v4()}',
        );
    final uploadTask = await storageReference.putFile(file);
    final streamSubscription = uploadTask.events.listen((event) {
      print('EVENT ${event.type}');
    });
    await uploadTask.onComplete;
    await streamSubscription.cancel();
    return await storageReference.getDownloadURL();
  }
}
