void main() {
  final String game = 'Starfield';
  final int price = 1699;
  final bool isAvailable = true;
  final List<String> editions = ['Standard', 'Collectors'];
  final images = <String>['background.png', 'space.png'];

  // dynamic == null
  dynamic errorMsg = 'Error';
  errorMsg = true;
  errorMsg = null;

  print(""""
  $game 
  $price 
  $bool 
  $isAvailable 
  $editions 
  $images
  $errorMsg""");
}
