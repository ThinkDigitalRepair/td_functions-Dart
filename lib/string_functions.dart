String removeEach(String string, String chars) {
  for (int i = 0; i < chars.length; i++) {
    string = string.replaceAll("${chars[i]}", "");
  }
  return string;
}

List<String> toList(String string) {
  List<String> stringAsList = [];

  for (int i = 0; i < string.length; i++)
    stringAsList.add(string[i]);

  return stringAsList;
}