String removeEach(String string, String chars) {
  for (int i = 0; i < chars.length; i++) {
    string = string.replaceAll("${chars[i]}", "");
  }
  return string;
}
