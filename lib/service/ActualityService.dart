import 'package:flutter/material.dart';
import 'package:giz/model/Actuality.dart';

class ActualityService{

  static List<Actuality> getActualities(){
    return [
      Actuality(category:'AGRICULTURE',title:'Une production mondiale largement suffisante',author:'MAEP',date:'05 Mai 2020',img:'assets/images/agriculture.png',categoryColor:Colors.green),
      Actuality(category:'SANTÉ',title:'Météo-sensibilité : pourquoi la météo ...',author:'MAEP',date:'05 Mai 2020',img:'assets/images/sante.png',categoryColor:Colors.red),
      Actuality(category:'ELEVAGE',title:'Quels instruments pour un élevage durable et rémunéra...',author:'MAEP',date:'05 Mai 2020',img:'assets/images/default.png',categoryColor:Colors.amber),
    ];
  }

}