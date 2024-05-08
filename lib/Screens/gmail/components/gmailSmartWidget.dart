import 'package:flutter/material.dart';

import '../../../utils/global.dart';

ListTile buildListTile(index) {
  return ListTile(
    leading: Icon(
      detailsIcons[index],
      color: Colors.white,
    ),
    title: Text(
      detailsText[index],
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  );
}