import 'test.dart';

class Meal {
  final String mealTime, name, imagepath, kiloCaloBurnt, timetaken;

  Meal({
    this.mealTime,
    this.name,
    this.imagepath,
    this.kiloCaloBurnt,
    this.timetaken,
  });
}

final meals = [
  Meal(
    mealTime: "Take Test",
    name: "",
    kiloCaloBurnt: "jbgsuydg",
    timetaken: "Get Your Diet",
    imagepath: "images/test.jpg",
  ),
  Meal(
    mealTime: "Get Diet Plan",
    name: "",
    kiloCaloBurnt: '612',
    timetaken: "Follow Daily ",
    imagepath: "images/diet.jpg",
  ),
  Meal(
    mealTime: 'Precautions',
    name: "",
    kiloCaloBurnt: "njnd",
    timetaken: "You Must Take",
    imagepath: "images/prec.png",
  ),
  Meal(
    mealTime: "World Corona Meter",
    name: "",
    kiloCaloBurnt: "jbgsuydg",
    timetaken: "Check Your Area",
    imagepath: "images/world.jpg",
  ),
  Meal(
    mealTime: "COVID-19 FAQ",
    name: "",
    kiloCaloBurnt: "jbgsuydg",
    timetaken: "Clear Your Myths",
    imagepath: "images/faq.jpg",
  )
];
