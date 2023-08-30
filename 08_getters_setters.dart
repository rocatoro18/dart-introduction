void main() {
  final mysquare = Square(side: 20);
  //mysquare.side = 1;
  print('Area: ${mysquare.area}');
}

class Square {
  double _side;
  Square({required double side})
      : assert(side > 0, 'error'),
        _side = side;

  // getter
  double get area {
    return _side * _side;
  }

  // setter
  set side(double value) {
    print('Ingresando nuevo valor: $value');
    if (value <= 0) throw 'Valor debe ser mayor a 0';
    _side = value;
  }

  double calcularArea() {
    return _side * _side;
  }
}
