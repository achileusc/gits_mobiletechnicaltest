List<String> weightedStrings(String s, List<int> queries) {
  // Set untuk menyimpan semua bobot
  Set<int> weights = {};

  int currentWeight = 0;

  for (int i = 0; i < s.length; i++) {
    // menghitung bobot karakter
    int weight = s.codeUnitAt(i) - 96;

    if (i > 0 && s[i] == s[i - 1]) {
      currentWeight += weight;
    } else {
      currentWeight = weight;
    }

    // Simpan bobot substring ke dalam Set
    weights.add(currentWeight);
  }

  // Mapping setiap query ke Yes atau No
  return queries.map((q) => weights.contains(q) ? "Yes" : "No").toList();
}

void main() {
  String inputString = "abbcccd";
  List<int> queries = [1, 3, 9, 8];

  List<String> result = weightedStrings(inputString, queries);

  print("Input String: $inputString");
  print("Queries: $queries");
  print("Output: $result");
}
