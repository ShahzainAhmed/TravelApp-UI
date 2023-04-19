import 'package:travel_app/app/data/constants/app_assets.dart';

class CardModel {
  final String name;
  final String image;
  final String date;
  final String tour;

  const CardModel({
    required this.image,
    required this.name,
    required this.date,
    required this.tour,
  });
}

List<CardModel> cardList = [
  CardModel(
    image: AppAssets.kCard1,
    name: "Lighthouse excursions",
    tour: "European Tour",
    date: "14 april - 25 april 2023",
  ),
  CardModel(
    image: AppAssets.kCard2,
    name: "Sydney Museum",
    tour: "Sydney Tour",
    date: "20 april - 30 april 2023",
  ),
  CardModel(
    image: AppAssets.kCard3,
    name: "Taj Mahal",
    date: "14 may - 25 may 2023",
    tour: "India Tour",
  ),
  CardModel(
    image: AppAssets.kCard4,
    name: "Rome",
    tour: "Rome Tour",
    date: "14 june - 26 june 2023",
  )
];
