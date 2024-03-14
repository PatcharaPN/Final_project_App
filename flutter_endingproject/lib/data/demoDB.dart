import 'package:flutter_endingproject/data/model.dart';

class DBDemo {
  final List<Model> modelDB = [
    Model(
      name: "MKMKKUYXXD",
      ssid: "SSID1",
      battery: 39,
    )
  ];
  List<Model> getAllModels() {
    return modelDB;
  }
}
