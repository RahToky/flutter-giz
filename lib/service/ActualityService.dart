import 'package:giz/model/Actuality.dart';

class ActualityService{

  static List<Actuality> getActualities(){
    return [
      Actuality('AGRICULTURE','Une production mondiale largement suffisante','MAEP','05 Mai 2020'),
      Actuality('SANTÉ','Météo-sensibilité : pourquoi la météo ...','MAEP','05 Mai 2020'),
      Actuality('ELEVAGE','Quels instruments pour un élevage durable et rémunéra...','MAEP','05 Mai 2020'),
    ];
  }

}