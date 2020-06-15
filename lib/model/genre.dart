enum Gender { masculino, feminino }

extension TypeGender on Gender {
  String description() {
    switch (this) {
      case Gender.masculino:
        return 'Masculino';

      case Gender.feminino:
        return 'Feminino';
    }
  }
}
