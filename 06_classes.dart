void main() {
  final spiderman = Hero(name: 'Spiderman', power: 'Spider');
  print(spiderman.toString());
  print(spiderman.name);
  print(spiderman.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'Sin poder'});

  /*
  Hero(String pName, String pPower)
      : name = pName,
        power = pPower;
  */
  @override
  String toString() {
    return '$name - $power';
  }
}
