import 'class.dart';

//List of all the vaccines
List<Vaccine> vaccinesall = vaccines1 + vaccines2 + vaccines3;

//List of the vaccines for <1 agegroup
List<Vaccine> vaccines1 = [
  Vaccine(name: "first", recommend: "Recommended - 1 month"),
  Vaccine(name: "second", recommend: "Recommended - 2 month")
];
//List of the vaccines for 1-3 agegroup
List<Vaccine> vaccines2 = [
  Vaccine(name: "third", recommend: "Recommended - 2 years"),
  Vaccine(name: "fourth", recommend: "Recommended - 2 years")
];
//List of the vaccines for >3 agegroup
List<Vaccine> vaccines3 = [
  Vaccine(name: "fifth", recommend: "Recommended - 4 years"),
  Vaccine(name: "sixth", recommend: "Recommended - 5 years")
];
