import 'mieszkanieBuilder.dart';
import 'osiedleBuilder.dart';

class Director {
  void zbudujKlasycznyDom(MieszkanieBuilder builder, bool czyKredyt) {
    builder.reset();
    builder.nadajNazwe("Zwykły dom");
    builder.dodajGaraz(true);
    builder.dodajKostkeBrukowa(true);
    builder.czyKredyt(czyKredyt);
  }

  void zbudujOsiedle(
      OsiedleBuilder builder, String nazwaOsiedla, bool czyKredyt) {
    builder.reset();
    builder.nadajNazwe(nazwaOsiedla);
    builder.dodajBasen(true);
    builder.dodajBrameAutomatyczna(true);
    builder.dodajGaraz(true);
    builder.dodajKostkeBrukowa(true);
    builder.czyKredyt(czyKredyt);
  }
}
