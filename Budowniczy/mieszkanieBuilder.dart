import 'Ibuilder.dart';
import 'mieszkanie.dart';

class MieszkanieBuilder implements IBuilder {
  Mieszkanie _mieszkanie = Mieszkanie();

  MieszkanieBuilder() {
    this.reset();
  }
  @override
  void czyKredyt(bool kredyt) {
    _mieszkanie.kredyt = kredyt;
  }

  @override
  void dodajBasen(bool basen) {
    _mieszkanie.basen = basen;
  }

  @override
  void dodajGaraz(bool garaz) {
    _mieszkanie.garaz = garaz;
  }

  @override
  void dodajBrameAutomatyczna(bool brama) {
    _mieszkanie.brama = brama;
  }

  @override
  void dodajKostkeBrukowa(bool kostka) {
    _mieszkanie.kostka = kostka;
  }

  @override
  void reset() {
    this._mieszkanie = Mieszkanie();
  }

  @override
  Mieszkanie getProduct() {
    var mieszkanie = _mieszkanie;
    this.reset();
    return mieszkanie;
  }

  @override
  void nadajNazwe(String nazwa) {
    _mieszkanie.nazwa = nazwa;
  }
}
