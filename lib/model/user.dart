import 'package:mobx/mobx.dart';
import './genre.dart';
part 'user.g.dart';

class User = _UserBase with _$User;

abstract class _UserBase with Store {
  @observable
  double weight;

  @observable
  Gender gender;

  @observable
  int diaryWater;

  @observable
  bool isFirsTime;

  _UserBase({
    this.weight,
    this.gender,
    this.diaryWater,
    this.isFirsTime = false,
  });

  calculateDiaryWater() {
    return weight * 35;
  }
}
