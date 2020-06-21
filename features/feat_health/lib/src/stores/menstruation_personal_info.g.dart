// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menstruation_personal_info.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MenstruationPersonalInfoStore on _MenstruationPersonalInfoStore, Store {
  final _$personalInfoAtom =
      Atom(name: '_MenstruationPersonalInfoStore.personalInfo');

  @override
  HealthMenstruationPersonalInfo get personalInfo {
    _$personalInfoAtom.reportRead();
    return super.personalInfo;
  }

  @override
  set personalInfo(HealthMenstruationPersonalInfo value) {
    _$personalInfoAtom.reportWrite(value, super.personalInfo, () {
      super.personalInfo = value;
    });
  }

  final _$readAsyncAction = AsyncAction('_MenstruationPersonalInfoStore.read');

  @override
  Future<dynamic> read() {
    return _$readAsyncAction.run(() => super.read());
  }

  final _$createOrUpdateAsyncAction =
      AsyncAction('_MenstruationPersonalInfoStore.createOrUpdate');

  @override
  Future<dynamic> createOrUpdate(HealthMenstruationPersonalInfo payload,
      {int cycleLength, int periodLength}) {
    return _$createOrUpdateAsyncAction.run(() => super.createOrUpdate(payload,
        cycleLength: cycleLength, periodLength: periodLength));
  }

  final _$createAsyncAction =
      AsyncAction('_MenstruationPersonalInfoStore.create');

  @override
  Future<dynamic> create({int cycleLength, int periodLength}) {
    return _$createAsyncAction.run(() =>
        super.create(cycleLength: cycleLength, periodLength: periodLength));
  }

  final _$updateAsyncAction =
      AsyncAction('_MenstruationPersonalInfoStore.update');

  @override
  Future<dynamic> update(HealthMenstruationPersonalInfo payload,
      {int cycleLength, int periodLength}) {
    return _$updateAsyncAction.run(() => super
        .update(payload, cycleLength: cycleLength, periodLength: periodLength));
  }

  @override
  String toString() {
    return '''
personalInfo: ${personalInfo}
    ''';
  }
}
