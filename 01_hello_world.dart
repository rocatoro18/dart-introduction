void main() {
  var myName = 'Roberto';
  // se asigna en tiempo de ejecucion
  late final mySecondName = 'Carlos';
  String stringName = 'Rober';
  stringName = 'Roberto Carlos';
  // se asigna en tiempo de construccion
  const saludo = 'Saludos';
  // interpolacion de string
  print('Hola $myName $mySecondName $stringName ${saludo.toUpperCase()}');
}
