class ExtendedString implements Comparable<String>, Pattern {
  String string;
  ExtendedString(this.string);

  bool contains(String other, {int startIndex = 0}) =>
      string.contains(other, startIndex);

  @override
  Iterable<Match> allMatches(String string, [int start = 0]) =>
      string.allMatches(string, start);

  @override
  int compareTo(String other) => string.compareTo(other);

  @override
  Match matchAsPrefix(String string, [int start = 0]) =>
      string.matchAsPrefix(string, start);

  String toUpperCase() => string.toUpperCase();

  String toLowerCase() => string.toLowerCase();

  /**
   * Replaces all substrings that match [from] with [replace].
   *
   * Returns a new string in which the non-overlapping substrings matching
   * [from] (the ones iterated by `from.allMatches(thisString)`) are replaced
   * by the literal string [replace].
   *
   *     'resume'.replaceAll(new RegExp(r'e'), 'é'); // 'résumé'
   *
   * Notice that the [replace] string is not interpreted. If the replacement
   * depends on the match (for example on a [RegExp]'s capture groups), use
   * the [replaceAllMapped] method instead.
   */

  String replaceAll(String from, String replace) =>
      string.replaceAll(from, replace);

  /**
   * Replaces all substrings that match each string in [from] with [replace].
   *
   * Returns a new string in which the non-overlapping substrings matching
   * [from] (the ones iterated by `from.allMatches(thisString)`) are replaced
   * by the literal string [replace].
   *
   *     'resume'.replaceAll(new RegExp(r'e'), 'é'); // 'résumé'
   *
   * Notice that the [replace] string is not interpreted. If the replacement
   * depends on the match (for example on a [RegExp]'s capture groups), use
   * the [replaceAllMapped] method instead.
   */

  String replaceEach(List<String> from, String replace) {
    String newString;

    for (int i = 0; i < from.length; i++)
      newString = string.replaceAll("${from[i]}", "");

    return newString;
  }
}
