import 'dart:collection';

import 'package:first_provider/classBreadCrumb.dart';
import 'package:flutter/material.dart';

class BreadCrumbWidget extends StatelessWidget {
  final UnmodifiableListView<BreadCrumb> breadCrumbs;
  const BreadCrumbWidget({super.key ,required this.breadCrumbs});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: breadCrumbs.map((breadCrumb) => Text(breadCrumb.title
      , style: TextStyle(color: breadCrumb.isActive?Colors.blue:Colors.black),)).toList(),
    );
  }
}