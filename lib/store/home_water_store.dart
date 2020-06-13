import 'package:dink_water/model/cups.dart';
import 'package:dink_water/model/user.dart';
import 'package:mobx/mobx.dart';
part 'home_water_store.g.dart';

class HomeWaterStore = _HomeWaterStoreBase with _$HomeWaterStore;

abstract class _HomeWaterStoreBase with Store {
  @observable
  var user = User(
    weight: 80,
    gender: 'Masculino',
    diaryWater: 2800,
    isFirsTime: false,
  );

  setDiaryWater() {
    user.diaryWater = user.weight.toInt() * 35;
  }

  @observable
  int value = 0;

  @action
  void addValue() => value += 200;

  var cups = ObservableList<Cups>().asObservable();

  @action
  void addCup(Cups cup) {
    cups.add(cup);
  }
}
