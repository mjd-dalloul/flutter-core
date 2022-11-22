extension StringExt on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  String get initialLetters {
    if (isNullOrEmpty) {
      return '';
    } else {
      final firstNameLastName = this!.split(' ');
      return firstNameLastName.first[0].toUpperCase() +
          (firstNameLastName.length > 1
              ? firstNameLastName.last[0].toUpperCase()
              : '');
    }
  }
}
