import 'dart:async';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:lib_di/lib_di.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class StorageStore = _StorageStore with _$StorageStore;

abstract class _StorageStore with Store {
  final ErrorStore errorStore;

  _StorageStore(
    this.errorStore,
  );

  @action
  Future upload(File file) async {
    final storageReference = FirebaseStorage().ref().child('profile_pictures');
    final uploadTask = storageReference.putFile(file);
    final streamSubscription = uploadTask.events.listen((event) {
      print('EVENT ${event.type}');
    });
    await uploadTask.onComplete;
    await streamSubscription.cancel();
  }
}