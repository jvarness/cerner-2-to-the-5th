// cerner_2^5_2018
import 'dart:async';
import 'dart:io';

void main() {
  var icon = 0x1F5FF;
  var lastIcon = 0x1F64F;
  new Timer.periodic(new Duration(seconds: 1), (Timer timer) {
    stdout..write("Emoji ${(++icon).toRadixString(16)}: " + new String.fromCharCode(icon))..add([13]);
    if (icon == lastIcon) {
      timer.cancel();
    }
  });
}