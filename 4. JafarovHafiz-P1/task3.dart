/// Note: function type should be defined there;
ShowMyDetails(
  String word1,
  String word2, {
  String word3 = "Greetings",
  String word4 = " Planet",
}) //setting named parameters
{
  print(word1 + word2);
  print(word3 + word4);
}

main() {
  ShowMyDetails("HEllO", " World"); // setting default parameters
}
