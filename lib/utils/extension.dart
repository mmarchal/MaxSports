extension StringExtension on String {
  String toAccent() {
    return replaceAll('Ã©', 'é').replaceAll('Ã¨', 'è').replaceAll('Ãª', 'ê');
  }
}
