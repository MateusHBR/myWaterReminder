// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$User on _UserBase, Store {
  final _$weightAtom = Atom(name: '_UserBase.weight');

  @override
  double get weight {
    _$weightAtom.reportRead();
    return super.weight;
  }

  @override
  set weight(double value) {
    _$weightAtom.reportWrite(value, super.weight, () {
      super.weight = value;
    });
  }

  final _$genderAtom = Atom(name: '_UserBase.gender');

  @override
  Gender get gender {
    _$genderAtom.reportRead();
    return super.gender;
  }

  @override
  set gender(Gender value) {
    _$genderAtom.reportWrite(value, super.gender, () {
      super.gender = value;
    });
  }

  final _$diaryWaterAtom = Atom(name: '_UserBase.diaryWater');

  @override
  int get diaryWater {
    _$diaryWaterAtom.reportRead();
    return super.diaryWater;
  }

  @override
  set diaryWater(int value) {
    _$diaryWaterAtom.reportWrite(value, super.diaryWater, () {
      super.diaryWater = value;
    });
  }

  final _$isFirsTimeAtom = Atom(name: '_UserBase.isFirsTime');

  @override
  bool get isFirsTime {
    _$isFirsTimeAtom.reportRead();
    return super.isFirsTime;
  }

  @override
  set isFirsTime(bool value) {
    _$isFirsTimeAtom.reportWrite(value, super.isFirsTime, () {
      super.isFirsTime = value;
    });
  }

  @override
  String toString() {
    return '''
weight: ${weight},
gender: ${gender},
diaryWater: ${diaryWater},
isFirsTime: ${isFirsTime}
    ''';
  }
}
