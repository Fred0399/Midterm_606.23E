void main() {
  var Input = 'Flutter';

  print(reverseStringUsingSplit(Input));
}

String reverseStringUsingSplit(String input) {
  var chars = input.split('');
  return chars.reversed.join();
}

