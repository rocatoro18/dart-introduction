void main() {
  final windplant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  print('wind: : ${chargedPhone(windplant)}');
  print('nuclear: : ${chargedPhone(nuclearPlant)}');
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
  final PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// extends o implements
// extends = herencia, extiende todo (general)
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// implements = nos obliga explicitamente a colocar cada override, implementa solo lo que se necesita (especifico)
class NuclearPlant implements EnergyPlant {
  double energyLeft;
  final PlantType type = PlantType.nuclear;
  NuclearPlant({required this.energyLeft});
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
