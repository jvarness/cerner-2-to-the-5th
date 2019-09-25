#include <iostream>
// cerner_2^5_2019
using namespace std;
int main() {
  long num = 0;
  cout << "Gimme a number ~> ";
  cin >> num;

  while (num != 1) {
    cout << num << "\r\n";
    if (num % 2 == 0) {
      num = num / 2;
    }
    else {
      num = (num * 3) + 1;
    }
  }
  return 0;
}
