import 'dart:math';
// cerner_2^5_2019
abstract class Shape {
  double getArea();
  double getPerimiter();
  @override
  bool operator ==(dynamic obj) {
    if (obj is! Shape)
      return false;
    Shape s = obj;
    return this.getArea() == s.getArea() && this.getPerimiter() == s.getPerimiter();
  }
}
class Square extends Shape {
  final double side1, side2;
  Square(this.side1, this.side2);
  @override double getArea() => this.side1 * this.side2;
  @override double getPerimiter() => (this.side1 + this.side2) * 2;
}
class Circle extends Shape {
  final double radius;
  Circle(this.radius);

  @override double getArea() => pow(this.radius,2) * pi;
  @override double getPerimiter() => this.radius * 2 * pi;
}
void main() {
  Shape c = new Circle(4.0), s = new Square(2.0, 2.0);
  print(c == s);
}