import 'package:Testing_App/services/get_data.dart';
import 'package:flutter/cupertino.dart';

class DataProvider extends ChangeNotifier{
  DataModel data = DataModel();
  List dataList;

 void allData() async {
     dataList = await data.getStateData();
    print(dataList);
    notifyListeners();
  }
   


}