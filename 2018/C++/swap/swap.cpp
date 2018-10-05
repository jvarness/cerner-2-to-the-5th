#include <iostream>
using namespace std;
// cerner_2^5_2018
int main() {
  int a = 1, b = 2;
  cout << "Value of a: " << a << " Value of b: " << b << "\r\n";
  swap(a, b);
  cout << "Value of a: " << a << " Value of b: " << b << "\r\n";

  string c = "Hello", d = "World";

  cout << "Value of c: " << c << " Value of d: " << d << "\r\n";
  swap(c, d);
  cout << "Value of c: " << c << " Value of d: " << d << "\r\n";

  return 0;
}

void swap(void* a, void* b) {
  void* temp;
  temp = a;
  a = b;
  b = temp;
}