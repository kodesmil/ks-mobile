import 'dart:async';

import 'package:crossplat_objectid/crossplat_objectid.dart';
import 'package:feat_auth/feat_auth.dart';
import 'package:flutter_background_geolocation/flutter_background_geolocation'
    '.dart' as bg;
import 'package:lib_di/stores/error/error_store.dart';
import 'package:mobx/mobx.dart';

import 'api.dart';
import 'model.dart';

part 'store.g.dart';

class LocationsStore = _LocationsStore with _$LocationsStore;

abstract class _LocationsStore with Store {
  final ErrorStore errorStore;
  final LocationsApi api;
  final AuthStorage authStorage;

  final userId = ObjectId();

  _LocationsStore(
    this.errorStore,
    this.api,
    this.authStorage,
  );

  @observable
  bool success = false;

  @observable
  bool loading = false;

  @action
  Future postLocation(bg.Location location) async {
    api.postLocation(Location(
      id: ObjectId().toString(),
      userId: userId.toString(),
      createdAt: DateTime.now(),
      lat: location.coords.latitude,
      lon: location.coords.longitude,
      accuracy: location.coords.accuracy,
    ));
  }

  @action
  Future close() async {}
}
