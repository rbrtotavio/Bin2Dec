class Memory {
  String _valueBin = '0';
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
    final initWipeValue = (_valueBin == '0') || _wipeValue;

    final currentValue = _valueBin;
    _valueBin = currentValue + digit;
    _wipeValue = false;
  }

  _allClear() {
    _valueBin = '0';
    _wipeValue = false;
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
    for (int contador = 0; contador <= reversedList.length; contador++) {}
  }
}
