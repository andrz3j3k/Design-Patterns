class Osiedle {
  String? nazwa;
  late final bool? basen;
  late final bool? garaz;
  late final bool? brama;
  late final bool? kostka;
  late final bool? kredyt;
  List<String?> zwrocListeObiektu() {
    return [
      nazwa,
      basen.toString(),
      garaz.toString(),
      brama.toString(),
      kostka.toString(),
      kredyt.toString()
    ];
  }
}
