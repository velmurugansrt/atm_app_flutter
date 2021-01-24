import 'package:flutter/material.dart';

AppBar CommonAppbarWidget(title,context) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    title: Text(
      title,
      style: Theme.of(context).accentTextTheme.subtitle1,
    ),
  );
}
