

import 'package:mobx/mobx.dart';

part 'checker.g.dart';
class Checker = _Checker with _$Checker;

abstract class _Checker with Store{
  @observable
  bool isOnline = false;

  @action
  void change(){
    isOnline = !isOnline;
  }
}

