/*
  List:
  Ordenado: Los elementos en una lista se mantienen en un orden específico, y puedes acceder a un elemento particular de la lista usando un índice.
  Duplicados permitidos: Puedes tener múltiples elementos iguales en una lista.
  Acceso indexado: Puedes acceder a elementos específicos con un índice, por ejemplo: miLista[2].
  
  Iterable:
  Interfaz genérica: Iterable es una interfaz que cualquier colección puede implementar para que sus elementos se puedan recorrer o "iterar". Tanto List como Set son iterables porque implementan esta interfaz.
  Sin acceso indexado: A diferencia de List, no todos los iterables permiten el acceso por índice. Necesitas usar métodos específicos o iterar a través de ellos.
  Uso común: Usualmente, ves Iterable cuando trabajas con operaciones de transformación en colecciones, como map, where, etc.

  Set:
  Sin orden: Un Set no garantiza un orden específico para sus elementos.
  Duplicados no permitidos: Si intentas añadir un elemento duplicado a un Set, este será ignorado.
  Sin acceso indexado: A diferencia de List, no puedes acceder a un elemento de un Set usando un índice.
  Uso común: Es útil cuando quieres asegurarte de que todos los elementos en una colección son únicos.

  En resumen:
  List: Una colección ordenada que permite duplicados y tiene acceso indexado.
  Iterable: Una interfaz para colecciones que se pueden recorrer.
  Set: Una colección sin orden que no permite duplicados.
  */
void main() {
  final numbers = [1, 2, 2, 4, 3, 4, 5, 6, 6, 7, 7, 8, 9, 10];
  print('List Original $numbers');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First ${numbers.first}');
  print('Reversed ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable $reversedNumbers');
  print('List ${reversedNumbers.toList()}');
  print('Set ${reversedNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((num) {
    return num > 5;
  });

  print('>5: $numbersGreaterThan5');
  print('>5 Set: ${numbersGreaterThan5.toSet()}');
}
