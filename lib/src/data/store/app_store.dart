import 'dart:convert';

class AppStore {
  static final AppStore _appStore = AppStore._();

  factory AppStore() => _appStore;

  AppStore._() {}

  Map amount = {
    'total': 0,
    'list': {
      '20': 0,
      '10': 0,
      '5': 0,
      '1': 0,
    }
  };

  Map getAmount() {
    return json.decode(json.encode(amount));
  }

  void setAmount(data) {
    amount = data;
  }
}
