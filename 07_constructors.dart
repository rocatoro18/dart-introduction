void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Rocket',
    'power': 'Animal',
    'isAlive': false
  };

  final ironman = Hero(name: 'Ironman', power: 'Money', isAlive: true);
  final ironmanJson = Hero.fromJson(rawJson);
  print(ironman);
  print(ironmanJson);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name $power is Alive: ${isAlive ? 'YES' : 'NO'}';
  }
}
