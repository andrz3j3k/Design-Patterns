abstract class Budynek {
  int? _szerokosc;
  int? _dlugosc;
  String? _nazwa;

  void budowac() {}
  void zmienNazwe(nazwa) {
    _nazwa = nazwa;
  }

  void wyswietlNazwe() {
    print(_nazwa);
  }
}

class Dom extends Budynek {
  @override
  void budowac() {
    print("Budujemy dom");
  }
}

class Mieszkanie extends Budynek {
  @override
  void budowac() {
    print("Budujemy mieszkanie");
  }
}

enum RodzajBudynkow { Dom, Mieszkanie }

class FabrykaBudynkow {
  Budynek budowacBudynek(RodzajBudynkow rodzajBudynkow) {
    switch (rodzajBudynkow) {
      case RodzajBudynkow.Dom:
        return Dom();
      case RodzajBudynkow.Mieszkanie:
        return Mieszkanie();
      default:
        throw Exception("Nie ma takiego obiektu");
    }
  }
}

void main(List<String> args) {
  var fabryka = FabrykaBudynkow();
  var dom = fabryka.budowacBudynek(RodzajBudynkow.Dom);
  dom.zmienNazwe("Willa");
  dom.wyswietlNazwe();
}
