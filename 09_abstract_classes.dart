void main() {
  final windplant = WindPlant(initialEnergy: 100);
  print(windplant);
  print('wind: : ${chargedPhone(windplant)}');
}

// Principio inversion de dependencias y adaptadores
double chargedPhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Sin suficiente energia');
  }
  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// extends o implements
// extends = herencia
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
