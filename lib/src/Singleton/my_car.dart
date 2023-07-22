import 'package:flutter/material.dart';

class Controller  {
  static final Controller _instance = Controller._internal();
  Widget? _currentWidget;

  Controller._internal() {
    _currentWidget = Container();
  }

  factory Controller() => _instance;

  Widget get currentWidget => this._currentWidget!;

  set currentWidget(Widget widget){
    _currentWidget = widget;
  }
}