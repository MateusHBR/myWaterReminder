// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_water_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeWaterStore on _HomeWaterStoreBase, Store {
  final _$userAtom = Atom(name: '_HomeWaterStoreBase.user');

  @override
  User get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$valueAtom = Atom(name: '_HomeWaterStoreBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_HomeWaterStoreBaseActionController =
      ActionController(name: '_HomeWaterStoreBase');

  @override
  void addValue() {
    final _$actionInfo = _$_HomeWaterStoreBaseActionController.startAction(
        name: '_HomeWaterStoreBase.addValue');
    try {
      return super.addValue();
    } finally {
      _$_HomeWaterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic plusValue() {
    final _$actionInfo = _$_HomeWaterStoreBaseActionController.startAction(
        name: '_HomeWaterStoreBase.plusValue');
    try {
      return super.plusValue();
    } finally {
      _$_HomeWaterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic subtractValue() {
    final _$actionInfo = _$_HomeWaterStoreBaseActionController.startAction(
        name: '_HomeWaterStoreBase.subtractValue');
    try {
      return super.subtractValue();
    } finally {
      _$_HomeWaterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addCup(Cups cup) {
    final _$actionInfo = _$_HomeWaterStoreBaseActionController.startAction(
        name: '_HomeWaterStoreBase.addCup');
    try {
      return super.addCup(cup);
    } finally {
      _$_HomeWaterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removCup(int index) {
    final _$actionInfo = _$_HomeWaterStoreBaseActionController.startAction(
        name: '_HomeWaterStoreBase.removCup');
    try {
      return super.removCup(index);
    } finally {
      _$_HomeWaterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDropDown(dynamic value) {
    final _$actionInfo = _$_HomeWaterStoreBaseActionController.startAction(
        name: '_HomeWaterStoreBase.changeDropDown');
    try {
      return super.changeDropDown(value);
    } finally {
      _$_HomeWaterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
value: ${value}
    ''';
  }
}
