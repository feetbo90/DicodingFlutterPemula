import 'package:flutter/cupertino.dart';

class HeroModel {
  final int id;
  final String imageAssets;
  final String name;
  final String description;
  final Color warna;

  HeroModel(
      {required this.imageAssets,
        required this.name,
        required this.description,
        required this.warna,
        required this.id});
}
