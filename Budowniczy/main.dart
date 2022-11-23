import 'director.dart';
import 'mieszkanie.dart';
import 'mieszkanieBuilder.dart';
import 'osiedle.dart';
import 'osiedleBuilder.dart';

void main(List<String> args) {
  Director director = Director();

  MieszkanieBuilder builderMieszkanie = MieszkanieBuilder();
  director.zbudujKlasycznyDom(builderMieszkanie, true);
  Mieszkanie domek = builderMieszkanie.getProduct();
  print(domek.posiadanieGarazu());

  OsiedleBuilder builderOsiedle = OsiedleBuilder();
  director.zbudujOsiedle(builderOsiedle, "Amazing People", true);
  Osiedle osiedle = builderOsiedle.getProduct();
  osiedle.zwrocListeObiektu().forEach((element) {
    print(element);
  });
}
