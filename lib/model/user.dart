class User {
  double weight;
  String gender;
  int diaryWater;
  bool isFirsTime;

  User({
    this.weight,
    this.gender,
    this.diaryWater,
    this.isFirsTime = false,
  });

  calculateDiaryWater() {
    return weight * 35;
  }
}
