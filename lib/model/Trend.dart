import 'package:flutter/material.dart';

import 'Actuality.dart';

class Trend extends Actuality {
  String subtitle;
  Color categoryTextColor;

  Trend({category, title, author, date, img, categoryColor, this.subtitle, this.categoryTextColor})
      : super(
            category: category,
            title: title,
            author: author,
            date: date,
            img: img,
            categoryColor: categoryColor);
}
