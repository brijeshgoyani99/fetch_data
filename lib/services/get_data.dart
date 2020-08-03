import 'package:Testing_App/services/networking.dart';
import 'dart:async';

List currentStatus = [];

const CoronaDataUrl = "https://sigmatenant.ml/mobile/tags";

class DataModel {
  Future<dynamic> getStateData() async {
    NetworkHelper networkHelper = NetworkHelper(CoronaDataUrl);
    currentStatus.clear();
    var allData = await networkHelper.getData();
    print(allData);
    return allData["tags"];
  }
}
