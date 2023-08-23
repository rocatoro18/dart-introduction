void main() {
  final Map<String, dynamic> game = {
    'game': 'starfield',
    'price': 1699,
    'isAvailable': true,
    'editions': <String>['Standard', 'Collectors'],
    'images': {1: 'backgroud', 2: 'profile'}
  };
  final games = {1: 'abc', 2: 'qwerty'};
  print('$game $games');
  print('Editions ${game['editions']}');
  print('Images ${game['images']}');

  print('Image 2 profile picture: ${game['images'][2]}');
  print('Image 1 background picture: ${game['images'][1]}');
}
