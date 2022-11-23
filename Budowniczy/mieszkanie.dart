class Mieszkanie {
  String? nazwa;
  late final bool? basen;
  late final bool? garaz;
  late final bool? brama;
  late final bool? kostka;
  late final bool? kredyt;
  String? posiadanieGarazu() {
    if (garaz == true) {
      return "Posiadasz niesamowity garaz!";
    } else {
      return "Nie posiadasz garazu";
    }
  }
}
