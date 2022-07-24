extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : "";
  // ignore: valid_regexps
  String toTitleCase() => replaceAll(RegExp('+'), '')
      .split('')
      .map((str) => str.toCapitalized())
      // ignore: avoid_redundant_argument_values
      .join('');
}
