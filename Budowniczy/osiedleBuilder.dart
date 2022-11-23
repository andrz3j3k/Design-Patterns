import 'Ibuilder.dart';
import 'osiedle.dart';

class OsiedleBuilder implements IBuilder {
  Osiedle _osiedle = Osiedle();
  OsiedleBuilder() {
    this.reset();
  }

  @override
  void czyKredyt(bool kredyt) {
    _osiedle.kredyt = kredyt;
  }

  @override
  void dodajBasen(bool basen) {
    _osiedle.basen = basen;
  }

  @override
  void dodajBrameAutomatyczna(bool brama) {
    _osiedle.brama = brama;
  }

  @override
  void dodajGaraz(bool garaz) {
    _osiedle.garaz = garaz;
  }

  @override
  void dodajKostkeBrukowa(bool kostka) {
    _osiedle.kostka = kostka;
  }

  @override
  void nadajNazwe(String nazwa) {
    _osiedle.nazwa = nazwa;
  }

  @override
  void reset() {
    this._osiedle = Osiedle();
  }

  @override
  Osiedle getProduct() {
    return _osiedle;
  }
}
