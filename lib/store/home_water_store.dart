import 'package:dink_water/model/cups.dart';
import 'package:dink_water/model/genre.dart';
import 'package:dink_water/model/user.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'home_water_store.g.dart';

class HomeWaterStore = _HomeWaterStoreBase with _$HomeWaterStore;

abstract class _HomeWaterStoreBase with Store {
  _HomeWaterStoreBase() {
    autorun(
      (_) {
        setDiaryWater();
      },
    );
  }

  @observable
  var user = User(
    weight: 80,
    gender: Gender.masculino,
    diaryWater: 0,
    isFirsTime: false,
  );

  setDiaryWater() {
    user.diaryWater = user.weight.toInt() * 35;
  }

  @observable
  int value = 0;

  @action
  void addValue() => value += 200;

  @action
  plusValue() {
    if (user.diaryWater < 15001) {
      user.diaryWater += 100;
    }
  }

  @action
  subtractValue() {
    if (user.diaryWater > 0) {
      user.diaryWater -= 100;
    }
  }

  var cups = ObservableList<Cups>().asObservable();

  @action
  void addCup(Cups cup) {
    cups.add(cup);
  }

  @action
  void removCup(int index) {
    cups.removeAt(index);
  }

  ObservableList<DropdownMenuItem<Gender>> getDropDownGenre() {
    ObservableList<DropdownMenuItem<Gender>> gender = ObservableList();
    for (var type in Gender.values) {
      gender.add(
        DropdownMenuItem(
          value: type,
          child: Text(
            type.description(),
            style: TextStyle(
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }
    return gender.asObservable();
  }

  @action
  void changeDropDown(value) => user.gender = value;

  @action
  void addWeight() {
    if (user.weight < 300) {
      user.weight += 0.5;
      setDiaryWater();
    }
  }

  @action
  void remWeight() {
    if (user.weight > (0)) {
      user.weight -= 0.5;
      setDiaryWater();
    }
  }
}
