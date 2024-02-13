import 'dart:collection';

import 'package:first_provider/classBreadCrumb.dart';
import 'package:flutter/material.dart';

class BreadCrumbProvider extends ChangeNotifier{
final List<BreadCrumb> _items = [];
//we want a read only list
UnmodifiableListView<BreadCrumb> get items => UnmodifiableListView(_items);

//this function will be called when a new bread crumb is added to give
//the name + < symbol

void add(BreadCrumb breadCrumb){
    for(final item in _items){
      item.Activate();
    }
    _items.add(breadCrumb);
    notifyListeners();
}

void reset(){
  _items.clear();
  notifyListeners();
}
}
