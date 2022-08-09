class Validator {
  static String? validateField(String? value) {
    if (value == null || value.isEmpty) {
      return 'O campo não pode estar vazio';
    } else {
      return null;
    }
  }
}
