import 'dart:io';

String lowSuccessPalindrome(String s, int k, int left, int right) {
  // Jika string kosong atau negatif, maka gagal
  if (k < 0) return "-1";
  if (left >= right) return s;

  List<String> chars = s.split('');

  if (chars[left] != chars[right]) {
    // mengambil karakter pertama
    chars[right] = chars[left];
    k--;
  }
  return lowSuccessPalindrome(chars.join(''), k, left + 1, right - 1);
}

void main() {
  // input angka untuk variable s
  stdout.write("Input angka (s): ");
  String s = stdin.readLineSync() ?? "";
  // input angka dari varible k
  stdout.write("Masukkan k: ");
  int k = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  // Menjalankan fungsi dari function string lowSuccessPalindrome
  String result = lowSuccessPalindrome(s, k, 0, s.length - 1);

  print("Output: $result");
}
