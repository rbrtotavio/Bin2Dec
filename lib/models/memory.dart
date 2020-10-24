import 'dart:math';

class Memory {
  String _valueBin = '';
  bool _wipeValue = false;
  String _valueDec = '0';

  void applyCommand(String command) {
    if (command == 'C') {
      _allClear();
    } else if (command == '=') {
      _bin2DecConvert();
    } else {
      _addDigit(command);
    }
  }

  _addDigit(String digit) {
    if (_wipeValue == true) {
      _valueBin = '';
      _wipeValue = false;
    }
    if (_valueBin.length == 16) {
      return;
    }
    final currentValue = _valueBin;
    _valueBin = currentValue + digit;
  }

  _allClear() {
    _valueBin = '';
    _wipeValue = false;
    _valueDec = '0';
  }

  String get valueBin {
    return _valueBin;
  }

  String get valueDec {
    return _valueDec;
  }

  _bin2DecConvert() {
    List<String> _valueBinArray = _valueBin.split('');
    var reversedList = new List.from(_valueBinArray.reversed);
    var result = 0;
    for (int contador = 0; contador < reversedList.length; contador++) {
      if (reversedList[contador] == '1') {
        result = result + pow(2, contador);
      }
    }
    _valueDec = result.toString();
    _wipeValue = true;
  }
}
