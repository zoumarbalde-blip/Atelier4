class Point {
  double _x, _y;

  Point(this._x, this._y);

  void move(double dx, double dy) {
    _x += dx;
    _y += dy;
  }

  void display() {
    print('Coordonnées : ($_x, $_y)');
  }
}

void main() {
  var pt = Point(12, 7);
  pt.display();
  pt.move(-7, 9);
  pt.display();
}