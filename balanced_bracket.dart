import 'dart:io';

String isBalanced(String input) {
  // Menghilangkan spasi
  String s = input.replaceAll(RegExp(r'\s+'), '');

  // List sebagai stack
  List<String> stack = [];

  // Pemetaan tiap kurung
  Map<String, String> pairs = {
    ')': '(',
    ']': '[',
    '}': '{',
  };

  for (int i = 0; i < s.length; i++) {
    String char = s[i];

    // Jika salah satu karakter merupakan kurung buka, masukkan ke stack
    if (char == '(' || char == '[' || char == '{') {
      stack.add(char);
    }
    // Jika karakter adalah kurung penutup
    else if (pairs.containsKey(char)) {
      // Jika stack kosong atau tidak serasi maka mengemalikan value NO
      if (stack.isEmpty || stack.removeLast() != pairs[char]) {
        return "NO";
      }
    }
  }
  return stack.isEmpty ? "YES" : "NO";
}

void main() {
  print("=== Program Balanced Brackets ===");

  stdout.write("Input string bracket: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    String result = isBalanced(input);
    print("Output: $result");
  }
}
