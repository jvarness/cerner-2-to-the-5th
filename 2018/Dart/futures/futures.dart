// cerner_2^5_2018
import 'dart:async';

void main() {
  print("Starting my program!!");
  Stream<int> integers = _countSomeInts();  
  integers.forEach((x) => print("Received: ${x}")).then((_) => print("Wait... wut?"));
  print("Ending my program!!");
}

Stream<int> _countSomeInts() async* {
  for(int x in new List.generate(10, (index) => index + 1)) {
    print("Sending: ${x}");
    yield x;
  }
}