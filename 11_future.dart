void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('');
    print('exito: $value');
  } on Exception catch (err) {
    print('Tenemos una exception $err');
  } catch (err) {
    print('No se que paso: $err');
  } finally {
    print('fin del try y catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1), () {});

  // Error controlado
  throw Exception('No hay parametros en el URL');
  // Error no controlado
  //throw 'Error en la peticion';

  //return 'Tenemos un valor de la petición';
}
