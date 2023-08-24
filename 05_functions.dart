void main() {
  print(saludo('Roberto'));
  print(lambda());
  print('Suma ${addTwoNumbers(10, 8)}');
  print(saludoParametroNombre(name: 'Carlos', message: 'Que tal'));
}

String saludo(String nombre) {
  return 'HOLA $nombre';
}

String lambda() => 'Soy una función lambda';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {
  //b = b ?? 0;
  //b ??= 0;
  return a + b;
}

String saludoParametroNombre({required name, String message = 'Hola,'}) {
  return '$message $name';
}
