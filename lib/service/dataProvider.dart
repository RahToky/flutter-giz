import 'package:flutter/material.dart';
import 'package:giz/model/Actuality.dart';
import 'package:giz/model/Trend.dart';

class DataProvider{

  static List<Actuality> getActualities(){
    return [
      Actuality(category:'AGRICULTURE',title:'Une production mondiale largement suffisante',author:'MAEP',date:'05 Mai 2020',img:'assets/images/agriculture.png',categoryColor:Colors.green),
      Actuality(category:'SANTÉ',title:'Météo-sensibilité : pourquoi la météo ...',author:'MAEP',date:'05 Mai 2020',img:'assets/images/sante.png',categoryColor:Colors.red),
      Actuality(category:'ÉLEVAGE',title:'Quels instruments pour un élevage durable et rémunéra...',author:'MAEP',date:'05 Mai 2020',img:'assets/images/default.png',categoryColor:Colors.amber),
    ];
  }

  static List<Trend> getTrends(){
    return [
      Trend(category:'ÉLEVAGE',title:'Quels instruments pour un élevage durable et rémunéra...',author:'MAEP',date:'07/09/2020',img:'assets/images/trend_1.png',categoryColor:Colors.amber,subtitle:'CONSEIL',categoryTextColor: null),
      Trend(category:'PÊCHE',title:'Les facteurs clés de la météo marine pour les pêcheurs du sud',author:'MAEP',date:'07/09/2020',img:'assets/images/trend_2.png',categoryColor:Colors.blue[600],subtitle:'ACTUALITÉ',categoryTextColor: null),
      Trend(category:'MÉTÉO',title:'Découvrez la météo lors de la fête nationale de Madagascar liberale',author:'MAEP',date:'07/09/2020',img:'assets/images/trend_3.png',categoryColor:Colors.indigo[700],subtitle:'CONSEIL',categoryTextColor:Colors.white),
    ];
  }

}