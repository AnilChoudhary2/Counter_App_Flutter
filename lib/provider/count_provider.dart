import 'dart:core';

import 'package:flutter/material.dart';


class CountProvider with ChangeNotifier {
  //this  generates list of 100 elements with 0 as default value
  List data = List.generate(100, (index) => 0);
  //this function increments the value of clicked item by 1
  setCount(int Index) {
    data?[Index] += 1;
    //this notifies back to consumer of this provider so that UI can be updated with latest data
    notifyListeners();
  }
}
